
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ timestamp; int flags; } ;
typedef TYPE_1__ AVIndexEntry ;


 int AVINDEX_DISCARD_FRAME ;
 int AVINDEX_KEYFRAME ;
 int AVSEEK_FLAG_ANY ;
 int AVSEEK_FLAG_BACKWARD ;

int ff_index_search_timestamp(const AVIndexEntry *entries, int nb_entries,
                              int64_t wanted_timestamp, int flags)
{
    int a, b, m;
    int64_t timestamp;

    a = -1;
    b = nb_entries;


    if (b && entries[b - 1].timestamp < wanted_timestamp)
        a = b - 1;

    while (b - a > 1) {
        m = (a + b) >> 1;


        while ((entries[m].flags & AVINDEX_DISCARD_FRAME) && m < b && m < nb_entries - 1) {
            m++;
            if (m == b && entries[m].timestamp >= wanted_timestamp) {
                m = b - 1;
                break;
            }
        }

        timestamp = entries[m].timestamp;
        if (timestamp >= wanted_timestamp)
            b = m;
        if (timestamp <= wanted_timestamp)
            a = m;
    }
    m = (flags & AVSEEK_FLAG_BACKWARD) ? a : b;

    if (!(flags & AVSEEK_FLAG_ANY))
        while (m >= 0 && m < nb_entries &&
               !(entries[m].flags & AVINDEX_KEYFRAME))
            m += (flags & AVSEEK_FLAG_BACKWARD) ? -1 : 1;

    if (m == nb_entries)
        return -1;
    return m;
}
