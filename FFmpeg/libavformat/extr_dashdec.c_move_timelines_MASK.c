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
struct representation {int /*<<< orphan*/  cur_seq_no; scalar_t__ n_timelines; int /*<<< orphan*/ * timelines; int /*<<< orphan*/  last_seq_no; int /*<<< orphan*/  first_seq_no; } ;
typedef  int /*<<< orphan*/  DASHContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct representation*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct representation*) ; 

__attribute__((used)) static void FUNC2(struct representation *rep_src, struct representation *rep_dest, DASHContext *c)
{
    if (rep_dest && rep_src ) {
        FUNC1(rep_dest);
        rep_dest->timelines    = rep_src->timelines;
        rep_dest->n_timelines  = rep_src->n_timelines;
        rep_dest->first_seq_no = rep_src->first_seq_no;
        rep_dest->last_seq_no = FUNC0(rep_dest, c);
        rep_src->timelines = NULL;
        rep_src->n_timelines = 0;
        rep_dest->cur_seq_no = rep_src->cur_seq_no;
    }
}