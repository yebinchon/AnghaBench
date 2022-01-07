
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int nb_items; TYPE_1__* item; int complete; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
struct TYPE_8__ {TYPE_4__ frag_index; int next_root_atom; } ;
struct TYPE_7__ {int moof_offset; int headers_read; } ;
typedef TYPE_2__ MOVContext ;
typedef int AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int mov_switch_root (TYPE_3__*,int,int) ;
 int search_frag_timestamp (TYPE_4__*,int *,int ) ;

__attribute__((used)) static int mov_seek_fragment(AVFormatContext *s, AVStream *st, int64_t timestamp)
{
    MOVContext *mov = s->priv_data;
    int index;

    if (!mov->frag_index.complete)
        return 0;

    index = search_frag_timestamp(&mov->frag_index, st, timestamp);
    if (index < 0)
        index = 0;
    if (!mov->frag_index.item[index].headers_read)
        return mov_switch_root(s, -1, index);
    if (index + 1 < mov->frag_index.nb_items)
        mov->next_root_atom = mov->frag_index.item[index + 1].moof_offset;

    return 0;
}
