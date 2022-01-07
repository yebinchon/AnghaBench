
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int nb_index_entries; int index_entries; } ;
typedef TYPE_1__ AVStream ;


 int ff_index_search_timestamp (int ,int ,int ,int) ;

int av_index_search_timestamp(AVStream *st, int64_t wanted_timestamp, int flags)
{
    return ff_index_search_timestamp(st->index_entries, st->nb_index_entries,
                                     wanted_timestamp, flags);
}
