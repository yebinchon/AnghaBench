
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockopt {int dummy; } ;
struct TYPE_4__ {int max_pkt_size; int avg_pkt_size; int lookup_weight; int lookup_step; int lookup_depth; int c_4; int c_3; int c_2; int c_1; int max_p; int min_th; int max_th; int w_q; int backlogged; int last_expired; int rq_elements; int rq_size; int flow_mask; int plr; int qsize; int weight; int parent_nr; int flags_fs; int fs_nr; } ;
struct dn_pipe_64 {TYPE_2__ fs; int ready; int if_name; int sched_time; int numbytes; int sum; int V; int delay; int bandwidth; int pipe_nr; } ;
struct TYPE_3__ {int max_pkt_size; int avg_pkt_size; int lookup_weight; int lookup_step; int lookup_depth; int c_4; int c_3; int c_2; int c_1; int max_p; int min_th; int max_th; int w_q; int backlogged; int last_expired; int rq_elements; int rq_size; int flow_mask; int plr; int qsize; int weight; int parent_nr; int flags_fs; int fs_nr; } ;
struct dn_pipe {TYPE_1__ fs; int ready; int if_name; int sched_time; int numbytes; int sum; int V; int delay; int bandwidth; int pipe_nr; } ;


 int IFNAMSIZ ;
 int bcopy (int ,int ,int ) ;
 int sooptcopyin (struct sockopt*,struct dn_pipe_64*,int,int) ;

int cp_pipe_from_user_64( struct sockopt *sopt, struct dn_pipe *p )
{
 struct dn_pipe_64 user_pipe_64;
 int error=0;

 error = sooptcopyin(sopt, &user_pipe_64, sizeof(struct dn_pipe_64), sizeof(struct dn_pipe_64));
 if ( !error ){
  p->pipe_nr = user_pipe_64.pipe_nr;
  p->bandwidth = user_pipe_64.bandwidth;
  p->delay = user_pipe_64.delay;
  p->V = user_pipe_64.V;
  p->sum = user_pipe_64.sum;
  p->numbytes = user_pipe_64.numbytes;
  p->sched_time = user_pipe_64.sched_time;
  bcopy( user_pipe_64.if_name, p->if_name, IFNAMSIZ);
  p->ready = user_pipe_64.ready;

  p->fs.fs_nr = user_pipe_64.fs.fs_nr;
  p->fs.flags_fs = user_pipe_64.fs.flags_fs;
  p->fs.parent_nr = user_pipe_64.fs.parent_nr;
  p->fs.weight = user_pipe_64.fs.weight;
  p->fs.qsize = user_pipe_64.fs.qsize;
  p->fs.plr = user_pipe_64.fs.plr;
  p->fs.flow_mask = user_pipe_64.fs.flow_mask;
  p->fs.rq_size = user_pipe_64.fs.rq_size;
  p->fs.rq_elements = user_pipe_64.fs.rq_elements;
  p->fs.last_expired = user_pipe_64.fs.last_expired;
  p->fs.backlogged = user_pipe_64.fs.backlogged;
  p->fs.w_q = user_pipe_64.fs.w_q;
  p->fs.max_th = user_pipe_64.fs.max_th;
  p->fs.min_th = user_pipe_64.fs.min_th;
  p->fs.max_p = user_pipe_64.fs.max_p;
  p->fs.c_1 = user_pipe_64.fs.c_1;
  p->fs.c_2 = user_pipe_64.fs.c_2;
  p->fs.c_3 = user_pipe_64.fs.c_3;
  p->fs.c_4 = user_pipe_64.fs.c_4;
  p->fs.lookup_depth = user_pipe_64.fs.lookup_depth;
  p->fs.lookup_step = user_pipe_64.fs.lookup_step;
  p->fs.lookup_weight = user_pipe_64.fs.lookup_weight;
  p->fs.avg_pkt_size = user_pipe_64.fs.avg_pkt_size;
  p->fs.max_pkt_size = user_pipe_64.fs.max_pkt_size;
 }
 return error;
}
