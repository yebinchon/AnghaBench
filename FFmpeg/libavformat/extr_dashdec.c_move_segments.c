
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct representation {scalar_t__ start_number; scalar_t__ n_fragments; scalar_t__ cur_seq_no; int * fragments; int last_seq_no; int parent; } ;
typedef int DASHContext ;


 int calc_max_seg_no (struct representation*,int *) ;
 int free_fragment_list (struct representation*) ;

__attribute__((used)) static void move_segments(struct representation *rep_src, struct representation *rep_dest, DASHContext *c)
{
    if (rep_dest && rep_src ) {
        free_fragment_list(rep_dest);
        if (rep_src->start_number > (rep_dest->start_number + rep_dest->n_fragments))
            rep_dest->cur_seq_no = 0;
        else
            rep_dest->cur_seq_no += rep_src->start_number - rep_dest->start_number;
        rep_dest->fragments = rep_src->fragments;
        rep_dest->n_fragments = rep_src->n_fragments;
        rep_dest->parent = rep_src->parent;
        rep_dest->last_seq_no = calc_max_seg_no(rep_dest, c);
        rep_src->fragments = ((void*)0);
        rep_src->n_fragments = 0;
    }
}
