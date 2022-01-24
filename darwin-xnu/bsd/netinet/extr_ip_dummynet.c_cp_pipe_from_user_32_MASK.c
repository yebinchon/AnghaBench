#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sockopt {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  max_pkt_size; int /*<<< orphan*/  avg_pkt_size; int /*<<< orphan*/  lookup_weight; int /*<<< orphan*/  lookup_step; int /*<<< orphan*/  lookup_depth; int /*<<< orphan*/  c_4; int /*<<< orphan*/  c_3; int /*<<< orphan*/  c_2; int /*<<< orphan*/  c_1; int /*<<< orphan*/  max_p; int /*<<< orphan*/  min_th; int /*<<< orphan*/  max_th; int /*<<< orphan*/  w_q; int /*<<< orphan*/  backlogged; int /*<<< orphan*/  last_expired; int /*<<< orphan*/  rq_elements; int /*<<< orphan*/  rq_size; int /*<<< orphan*/  flow_mask; int /*<<< orphan*/  plr; int /*<<< orphan*/  qsize; int /*<<< orphan*/  weight; int /*<<< orphan*/  parent_nr; int /*<<< orphan*/  flags_fs; int /*<<< orphan*/  fs_nr; } ;
struct dn_pipe_32 {TYPE_2__ fs; int /*<<< orphan*/  ready; int /*<<< orphan*/  if_name; int /*<<< orphan*/  sched_time; int /*<<< orphan*/  numbytes; int /*<<< orphan*/  sum; int /*<<< orphan*/  V; int /*<<< orphan*/  delay; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  pipe_nr; } ;
struct TYPE_3__ {int /*<<< orphan*/  max_pkt_size; int /*<<< orphan*/  avg_pkt_size; int /*<<< orphan*/  lookup_weight; int /*<<< orphan*/  lookup_step; int /*<<< orphan*/  lookup_depth; int /*<<< orphan*/  c_4; int /*<<< orphan*/  c_3; int /*<<< orphan*/  c_2; int /*<<< orphan*/  c_1; int /*<<< orphan*/  max_p; int /*<<< orphan*/  min_th; int /*<<< orphan*/  max_th; int /*<<< orphan*/  w_q; int /*<<< orphan*/  backlogged; int /*<<< orphan*/  last_expired; int /*<<< orphan*/  rq_elements; int /*<<< orphan*/  rq_size; int /*<<< orphan*/  flow_mask; int /*<<< orphan*/  plr; int /*<<< orphan*/  qsize; int /*<<< orphan*/  weight; int /*<<< orphan*/  parent_nr; int /*<<< orphan*/  flags_fs; int /*<<< orphan*/  fs_nr; } ;
struct dn_pipe {TYPE_1__ fs; int /*<<< orphan*/  ready; int /*<<< orphan*/  if_name; int /*<<< orphan*/  sched_time; int /*<<< orphan*/  numbytes; int /*<<< orphan*/  sum; int /*<<< orphan*/  V; int /*<<< orphan*/  delay; int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  pipe_nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  IFNAMSIZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sockopt*,struct dn_pipe_32*,int,int) ; 

int FUNC2( struct sockopt *sopt, struct dn_pipe *p )
{
	struct dn_pipe_32 user_pipe_32;
	int error=0;

	error = FUNC1(sopt, &user_pipe_32, sizeof(struct dn_pipe_32), sizeof(struct dn_pipe_32));
	if ( !error ){
		p->pipe_nr = user_pipe_32.pipe_nr;
		p->bandwidth = user_pipe_32.bandwidth;
		p->delay = user_pipe_32.delay;
		p->V = user_pipe_32.V;
		p->sum = user_pipe_32.sum;
		p->numbytes = user_pipe_32.numbytes;
		p->sched_time = user_pipe_32.sched_time;
		FUNC0( user_pipe_32.if_name, p->if_name, IFNAMSIZ);
		p->ready = user_pipe_32.ready;

		p->fs.fs_nr = user_pipe_32.fs.fs_nr;
		p->fs.flags_fs = user_pipe_32.fs.flags_fs;
		p->fs.parent_nr = user_pipe_32.fs.parent_nr;
		p->fs.weight = user_pipe_32.fs.weight;
		p->fs.qsize = user_pipe_32.fs.qsize;
		p->fs.plr = user_pipe_32.fs.plr;
		p->fs.flow_mask = user_pipe_32.fs.flow_mask;
		p->fs.rq_size = user_pipe_32.fs.rq_size;
		p->fs.rq_elements = user_pipe_32.fs.rq_elements;
		p->fs.last_expired = user_pipe_32.fs.last_expired;
		p->fs.backlogged = user_pipe_32.fs.backlogged;
		p->fs.w_q = user_pipe_32.fs.w_q;
		p->fs.max_th = user_pipe_32.fs.max_th;
		p->fs.min_th = user_pipe_32.fs.min_th;
		p->fs.max_p = user_pipe_32.fs.max_p;
		p->fs.c_1 = user_pipe_32.fs.c_1;
		p->fs.c_2 = user_pipe_32.fs.c_2;
		p->fs.c_3 = user_pipe_32.fs.c_3;
		p->fs.c_4 = user_pipe_32.fs.c_4;
		p->fs.lookup_depth = user_pipe_32.fs.lookup_depth;
		p->fs.lookup_step = user_pipe_32.fs.lookup_step;
		p->fs.lookup_weight = user_pipe_32.fs.lookup_weight;
		p->fs.avg_pkt_size = user_pipe_32.fs.avg_pkt_size;
		p->fs.max_pkt_size = user_pipe_32.fs.max_pkt_size;
	}
	return error;
}