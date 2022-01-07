
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_5__ {int nb_index_entries; TYPE_1__* index_entries; } ;
struct TYPE_4__ {scalar_t__ timestamp; } ;
typedef TYPE_2__ AVStream ;


 int av_assert0 (int) ;

__attribute__((used)) static void fix_index_entry_timestamps(AVStream* st, int end_index, int64_t end_ts,
                                       int64_t* frame_duration_buffer,
                                       int frame_duration_buffer_size) {
    int i = 0;
    av_assert0(end_index >= 0 && end_index <= st->nb_index_entries);
    for (i = 0; i < frame_duration_buffer_size; i++) {
        end_ts -= frame_duration_buffer[frame_duration_buffer_size - 1 - i];
        st->index_entries[end_index - 1 - i].timestamp = end_ts;
    }
}
