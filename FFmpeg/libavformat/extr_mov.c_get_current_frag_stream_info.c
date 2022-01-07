
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t current; size_t nb_items; TYPE_1__* item; } ;
struct TYPE_4__ {size_t current; size_t nb_stream_info; int * stream_info; } ;
typedef int MOVFragmentStreamInfo ;
typedef TYPE_1__ MOVFragmentIndexItem ;
typedef TYPE_2__ MOVFragmentIndex ;



__attribute__((used)) static MOVFragmentStreamInfo * get_current_frag_stream_info(
    MOVFragmentIndex *frag_index)
{
    MOVFragmentIndexItem *item;
    if (frag_index->current < 0 ||
        frag_index->current >= frag_index->nb_items)
        return ((void*)0);

    item = &frag_index->item[frag_index->current];
    if (item->current >= 0 && item->current < item->nb_stream_info)
        return &item->stream_info[item->current];


    return ((void*)0);
}
