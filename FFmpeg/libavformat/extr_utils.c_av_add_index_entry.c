
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_4__ {int index_entries_allocated_size; int nb_index_entries; int index_entries; } ;
typedef TYPE_1__ AVStream ;


 int ff_add_index_entry (int *,int *,int *,int ,int ,int,int,int) ;
 int wrap_timestamp (TYPE_1__*,int ) ;

int av_add_index_entry(AVStream *st, int64_t pos, int64_t timestamp,
                       int size, int distance, int flags)
{
    timestamp = wrap_timestamp(st, timestamp);
    return ff_add_index_entry(&st->index_entries, &st->nb_index_entries,
                              &st->index_entries_allocated_size, pos,
                              timestamp, size, distance, flags);
}
