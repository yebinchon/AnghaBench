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
struct TYPE_4__ {int reserved_size; int max_entries; int /*<<< orphan*/  filepos; int /*<<< orphan*/  segment_offset; } ;
typedef  TYPE_1__ mkv_seekhead ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int MAX_SEEKENTRY_SIZE ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static mkv_seekhead *FUNC3(AVIOContext *pb, int64_t segment_offset,
                                        int numelements)
{
    mkv_seekhead *new_seekhead = FUNC0(sizeof(mkv_seekhead));
    if (!new_seekhead)
        return NULL;

    new_seekhead->segment_offset = segment_offset;

    if (numelements > 0) {
        new_seekhead->filepos = FUNC1(pb);
        // 21 bytes max for a seek entry, 10 bytes max for the SeekHead ID
        // and size, 6 bytes for a CRC32 element, and 3 bytes to guarantee
        // that an EBML void element will fit afterwards
        new_seekhead->reserved_size = numelements * MAX_SEEKENTRY_SIZE + 19;
        new_seekhead->max_entries   = numelements;
        FUNC2(pb, new_seekhead->reserved_size);
    }
    return new_seekhead;
}