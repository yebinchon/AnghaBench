
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ timestamp; scalar_t__ pos; int min_distance; int size; int flags; } ;
typedef TYPE_1__ AVIndexEntry ;


 int AVERROR (int ) ;
 int AVSEEK_FLAG_ANY ;
 scalar_t__ AV_NOPTS_VALUE ;
 int EINVAL ;
 scalar_t__ RELATIVE_TS_BASE ;
 int UINT_MAX ;
 int av_assert0 (int) ;
 TYPE_1__* av_fast_realloc (TYPE_1__*,unsigned int*,int) ;
 int ff_index_search_timestamp (TYPE_1__*,int,scalar_t__,int ) ;
 scalar_t__ is_relative (scalar_t__) ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;

int ff_add_index_entry(AVIndexEntry **index_entries,
                       int *nb_index_entries,
                       unsigned int *index_entries_allocated_size,
                       int64_t pos, int64_t timestamp,
                       int size, int distance, int flags)
{
    AVIndexEntry *entries, *ie;
    int index;

    if ((unsigned) *nb_index_entries + 1 >= UINT_MAX / sizeof(AVIndexEntry))
        return -1;

    if (timestamp == AV_NOPTS_VALUE)
        return AVERROR(EINVAL);

    if (size < 0 || size > 0x3FFFFFFF)
        return AVERROR(EINVAL);

    if (is_relative(timestamp))
        timestamp -= RELATIVE_TS_BASE;

    entries = av_fast_realloc(*index_entries,
                              index_entries_allocated_size,
                              (*nb_index_entries + 1) *
                              sizeof(AVIndexEntry));
    if (!entries)
        return -1;

    *index_entries = entries;

    index = ff_index_search_timestamp(*index_entries, *nb_index_entries,
                                      timestamp, AVSEEK_FLAG_ANY);

    if (index < 0) {
        index = (*nb_index_entries)++;
        ie = &entries[index];
        av_assert0(index == 0 || ie[-1].timestamp < timestamp);
    } else {
        ie = &entries[index];
        if (ie->timestamp != timestamp) {
            if (ie->timestamp <= timestamp)
                return -1;
            memmove(entries + index + 1, entries + index,
                    sizeof(AVIndexEntry) * (*nb_index_entries - index));
            (*nb_index_entries)++;
        } else if (ie->pos == pos && distance < ie->min_distance)

            distance = ie->min_distance;
    }

    ie->pos = pos;
    ie->timestamp = timestamp;
    ie->min_distance = distance;
    ie->size = size;
    ie->flags = flags;

    return index;
}
