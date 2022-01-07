
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct representation {int cur_seq_no; scalar_t__ n_timelines; int * timelines; int last_seq_no; int first_seq_no; } ;
typedef int DASHContext ;


 int calc_max_seg_no (struct representation*,int *) ;
 int free_timelines_list (struct representation*) ;

__attribute__((used)) static void move_timelines(struct representation *rep_src, struct representation *rep_dest, DASHContext *c)
{
    if (rep_dest && rep_src ) {
        free_timelines_list(rep_dest);
        rep_dest->timelines = rep_src->timelines;
        rep_dest->n_timelines = rep_src->n_timelines;
        rep_dest->first_seq_no = rep_src->first_seq_no;
        rep_dest->last_seq_no = calc_max_seg_no(rep_dest, c);
        rep_src->timelines = ((void*)0);
        rep_src->n_timelines = 0;
        rep_dest->cur_seq_no = rep_src->cur_seq_no;
    }
}
