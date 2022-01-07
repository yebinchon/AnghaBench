
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {size_t current; size_t nb_items; TYPE_2__* item; } ;
struct TYPE_6__ {int nb_stream_info; int current; TYPE_1__* stream_info; } ;
struct TYPE_5__ {int id; } ;
typedef TYPE_2__ MOVFragmentIndexItem ;
typedef TYPE_3__ MOVFragmentIndex ;



__attribute__((used)) static void set_frag_stream(MOVFragmentIndex *frag_index, int id)
{
    int i;
    MOVFragmentIndexItem * item;

    if (frag_index->current < 0 ||
        frag_index->current >= frag_index->nb_items)
        return;

    item = &frag_index->item[frag_index->current];
    for (i = 0; i < item->nb_stream_info; i++)
        if (item->stream_info[i].id == id) {
            item->current = i;
            return;
        }


    item->current = -1;
}
