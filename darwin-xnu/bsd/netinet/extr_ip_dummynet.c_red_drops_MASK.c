#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u_int ;
struct dn_flow_set {int flags_fs; scalar_t__ lookup_step; scalar_t__ lookup_depth; int* w_q_lookup; scalar_t__ min_th; scalar_t__ max_th; int c_4; int c_2; int max_pkt_size; scalar_t__ c_1; scalar_t__ c_3; scalar_t__ w_q; } ;
struct dn_flow_queue {scalar_t__ len_bytes; scalar_t__ len; int avg; scalar_t__ q_time; int count; int random; } ;
typedef  int int64_t ;

/* Variables and functions */
 int DN_IS_GENTLE_RED ; 
 int DN_QSIZE_IS_BYTES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ curr_time ; 
 int FUNC4 () ; 

__attribute__((used)) static int
FUNC5(struct dn_flow_set *fs, struct dn_flow_queue *q, int len)
{
    /*
     * RED algorithm
     *
     * RED calculates the average queue size (avg) using a low-pass filter
     * with an exponential weighted (w_q) moving average:
     * 	avg  <-  (1-w_q) * avg + w_q * q_size
     * where q_size is the queue length (measured in bytes or * packets).
     *
     * If q_size == 0, we compute the idle time for the link, and set
     *	avg = (1 - w_q)^(idle/s)
     * where s is the time needed for transmitting a medium-sized packet.
     *
     * Now, if avg < min_th the packet is enqueued.
     * If avg > max_th the packet is dropped. Otherwise, the packet is
     * dropped with probability P function of avg.
     *
     */

    int64_t p_b = 0;
    /* queue in bytes or packets ? */
    u_int q_size = (fs->flags_fs & DN_QSIZE_IS_BYTES) ? q->len_bytes : q->len;

    FUNC0(("\ndummynet: %d q: %2u ", (int) curr_time, q_size));

    /* average queue size estimation */
    if (q_size != 0) {
	/*
	 * queue is not empty, avg <- avg + (q_size - avg) * w_q
	 */
	int diff = FUNC1(q_size) - q->avg;
	int64_t v = FUNC2((int64_t) diff, (int64_t) fs->w_q);

	q->avg += (int) v;
    } else {
	/*
	 * queue is empty, find for how long the queue has been
	 * empty and use a lookup table for computing
	 * (1 - * w_q)^(idle_time/s) where s is the time to send a
	 * (small) packet.
	 * XXX check wraps...
	 */
	if (q->avg) {
	    u_int t = (curr_time - q->q_time) / fs->lookup_step;

	    q->avg = (t < fs->lookup_depth) ?
		    FUNC2(q->avg, fs->w_q_lookup[t]) : 0;
	}
    }
    FUNC0(("dummynet: avg: %u ", FUNC3(q->avg)));

    /* should i drop ? */

    if (q->avg < fs->min_th) {
	q->count = -1;
	return 0; /* accept packet ; */
    }
    if (q->avg >= fs->max_th) { /* average queue >=  max threshold */
	if (fs->flags_fs & DN_IS_GENTLE_RED) {
	    /*
	     * According to Gentle-RED, if avg is greater than max_th the
	     * packet is dropped with a probability
	     *	p_b = c_3 * avg - c_4
	     * where c_3 = (1 - max_p) / max_th, and c_4 = 1 - 2 * max_p
	     */
	    p_b = FUNC2((int64_t) fs->c_3, (int64_t) q->avg) - fs->c_4;
	} else {
	    q->count = -1;
	    FUNC0(("dummynet: - drop"));
	    return 1 ;
	}
    } else if (q->avg > fs->min_th) {
	/*
	 * we compute p_b using the linear dropping function p_b = c_1 *
	 * avg - c_2, where c_1 = max_p / (max_th - min_th), and c_2 =
	 * max_p * min_th / (max_th - min_th)
	 */
	p_b = FUNC2((int64_t) fs->c_1, (int64_t) q->avg) - fs->c_2;
    }
    if (fs->flags_fs & DN_QSIZE_IS_BYTES)
	p_b = (p_b * len) / fs->max_pkt_size;
    if (++q->count == 0)
	q->random = (FUNC4() & 0xffff);
    else {
	/*
	 * q->count counts packets arrived since last drop, so a greater
	 * value of q->count means a greater packet drop probability.
	 */
	if (FUNC2(p_b, FUNC1((int64_t) q->count)) > q->random) {
	    q->count = 0;
	    FUNC0(("dummynet: - red drop"));
	    /* after a drop we calculate a new random value */
	    q->random = (FUNC4() & 0xffff);
	    return 1;    /* drop */
	}
    }
    /* end of RED algorithm */
    return 0 ; /* accept */
}