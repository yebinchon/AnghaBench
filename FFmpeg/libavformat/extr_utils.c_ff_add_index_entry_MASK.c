#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {scalar_t__ timestamp; scalar_t__ pos; int min_distance; int size; int flags; } ;
typedef  TYPE_1__ AVIndexEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVSEEK_FLAG_ANY ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ RELATIVE_TS_BASE ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_1__*,unsigned int*,int) ; 
 int FUNC3 (TYPE_1__*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*,int) ; 

int FUNC6(AVIndexEntry **index_entries,
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
        return FUNC0(EINVAL);

    if (size < 0 || size > 0x3FFFFFFF)
        return FUNC0(EINVAL);

    if (FUNC4(timestamp)) //FIXME this maintains previous behavior but we should shift by the correct offset once known
        timestamp -= RELATIVE_TS_BASE;

    entries = FUNC2(*index_entries,
                              index_entries_allocated_size,
                              (*nb_index_entries + 1) *
                              sizeof(AVIndexEntry));
    if (!entries)
        return -1;

    *index_entries = entries;

    index = FUNC3(*index_entries, *nb_index_entries,
                                      timestamp, AVSEEK_FLAG_ANY);

    if (index < 0) {
        index = (*nb_index_entries)++;
        ie    = &entries[index];
        FUNC1(index == 0 || ie[-1].timestamp < timestamp);
    } else {
        ie = &entries[index];
        if (ie->timestamp != timestamp) {
            if (ie->timestamp <= timestamp)
                return -1;
            FUNC5(entries + index + 1, entries + index,
                    sizeof(AVIndexEntry) * (*nb_index_entries - index));
            (*nb_index_entries)++;
        } else if (ie->pos == pos && distance < ie->min_distance)
            // do not reduce the distance
            distance = ie->min_distance;
    }

    ie->pos          = pos;
    ie->timestamp    = timestamp;
    ie->min_distance = distance;
    ie->size         = size;
    ie->flags        = flags;

    return index;
}