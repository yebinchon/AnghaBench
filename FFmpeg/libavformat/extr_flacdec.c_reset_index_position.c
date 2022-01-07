
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int nb_index_entries; TYPE_1__* index_entries; } ;
struct TYPE_4__ {int pos; } ;
typedef TYPE_2__ AVStream ;



__attribute__((used)) static void reset_index_position(int64_t metadata_head_size, AVStream *st)
{

    int i;
    for(i=0; i<st->nb_index_entries; i++) {
        st->index_entries[i].pos += metadata_head_size;
    }
}
