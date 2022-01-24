#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {intptr_t end; intptr_t start; } ;
typedef  TYPE_1__ soc_reserved_region_t ;
struct TYPE_7__ {intptr_t start; intptr_t size; } ;
typedef  TYPE_2__ soc_memory_region_t ;
typedef  int /*<<< orphan*/  in_regions ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,intptr_t,intptr_t,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 size_t FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,size_t) ; 
 int soc_memory_region_count ; 
 int /*<<< orphan*/  soc_memory_regions ; 

size_t FUNC6(soc_memory_region_t *regions)
{
    soc_memory_region_t *out_region = regions;
    /* make a local copy of the "input" regions so we can modify them */
    soc_memory_region_t in_regions[soc_memory_region_count];
    FUNC3(in_regions, soc_memory_regions, sizeof(in_regions));
    soc_memory_region_t *in_region = in_regions;

    size_t num_reserved = FUNC4();
    soc_reserved_region_t reserved[num_reserved];

    FUNC5(reserved, num_reserved);

    /* Go through the "in" regions (full regions, with no reserved
       sections removed from them) one at a time, trim off each reserved
       region, and then copy them to an out_region once trimmed
    */
    FUNC0(TAG, "Building list of available memory regions:");
    while(in_region != in_regions + soc_memory_region_count) {
        soc_memory_region_t in = *in_region;
        FUNC1(TAG, "Examining memory region 0x%08x - 0x%08x", in.start, in.start + in.size);
        intptr_t in_start = in.start;
        intptr_t in_end = in_start + in.size;
        bool copy_in_to_out = true;
        bool move_to_next = true;

        for (size_t i = 0; i < num_reserved; i++) {
            if (reserved[i].end <= in_start) {
                /* reserved region ends before 'in' starts */
                continue;
            }
            else if (reserved[i].start >= in_end) {
                /* reserved region starts after 'in' ends */
                break;
            }
            else if (reserved[i].start <= in_start &&
                     reserved[i].end >= in_end) { /* reserved covers all of 'in' */
                FUNC1(TAG, "Region 0x%08x - 0x%08x inside of reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                /* skip 'in' entirely */
                copy_in_to_out = false;
                break;
            }
            else if (in_start < reserved[i].start &&
                     in_end > reserved[i].end) { /* reserved contained inside 'in', need to "hole punch" */
                FUNC1(TAG, "Region 0x%08x - 0x%08x contains reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                FUNC2(in_start < reserved[i].start);
                FUNC2(in_end > reserved[i].end);

                /* shrink this region to end where the reserved section starts */
                in_end = reserved[i].start;
                in.size = in_end - in_start;

                /* update in_region so the 'next' iteration uses the region
                   after the reserved section */
                in_region->size -= (reserved[i].end - in_region->start);
                in_region->start = reserved[i].end;

                /* add first region, then re-run while loop with the updated in_region */
                move_to_next = false;
                break;
            }
            else if (reserved[i].start <= in_start) { /* reserved overlaps start of 'in' */
                FUNC1(TAG, "Start of region 0x%08x - 0x%08x overlaps reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                in.start = reserved[i].end;
                in_start = in.start;
                in.size = in_end - in_start;
            }
            else { /* reserved overlaps end of 'in' */
                FUNC1(TAG, "End of region 0x%08x - 0x%08x overlaps reserved 0x%08x - 0x%08x",
                               in_start, in_end, reserved[i].start, reserved[i].end);
                in_end = reserved[i].start;
                in.size = in_end - in_start;
            }
        }

        if (copy_in_to_out) {
            FUNC0(TAG, "Available memory region 0x%08x - 0x%08x", in.start, in.start + in.size);
            *out_region++ = in;
        }
        if (move_to_next) {
            in_region++;
        }
    }

    return (out_region - regions); /* return number of regions */
}