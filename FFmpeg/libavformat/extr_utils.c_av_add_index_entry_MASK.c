#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/  index_entries_allocated_size; int /*<<< orphan*/  nb_index_entries; int /*<<< orphan*/  index_entries; } ;
typedef  TYPE_1__ AVStream ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 

int FUNC2(AVStream *st, int64_t pos, int64_t timestamp,
                       int size, int distance, int flags)
{
    timestamp = FUNC1(st, timestamp);
    return FUNC0(&st->index_entries, &st->nb_index_entries,
                              &st->index_entries_allocated_size, pos,
                              timestamp, size, distance, flags);
}