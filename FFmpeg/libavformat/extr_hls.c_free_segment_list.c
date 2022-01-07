
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist {scalar_t__ n_segments; int segments; } ;


 int av_freep (int *) ;
 int free_segment_dynarray (int ,scalar_t__) ;

__attribute__((used)) static void free_segment_list(struct playlist *pls)
{
    free_segment_dynarray(pls->segments, pls->n_segments);
    av_freep(&pls->segments);
    pls->n_segments = 0;
}
