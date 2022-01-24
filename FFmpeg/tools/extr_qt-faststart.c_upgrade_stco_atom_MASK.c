#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int dest; int original_moov_size; scalar_t__ new_moov_size; } ;
typedef  TYPE_1__ upgrade_stco_context_t ;
typedef  scalar_t__ uint64_t ;
typedef  int uint32_t ;
struct TYPE_6__ {unsigned char* data; int header_size; } ;
typedef  TYPE_2__ atom_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  CO64_ATOM ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int) ; 

__attribute__((used)) static void FUNC5(upgrade_stco_context_t *context, atom_t *atom)
{
    unsigned char *pos;
    unsigned char *end;
    uint64_t new_offset;
    uint32_t offset_count;
    uint32_t original_offset;

    /* Note: not performing validations since they were performed on the first pass */

    offset_count = FUNC2(atom->data + 4);

    /* write the header */
    FUNC3(context->dest, atom->data - atom->header_size, atom->header_size + 8);
    FUNC0(context->dest + 4, CO64_ATOM);
    FUNC4(context->dest, atom->header_size, atom->header_size + 8 + offset_count * 8);
    context->dest += atom->header_size + 8;

    /* write the data */
    for (pos = atom->data + 8, end = pos + offset_count * 4;
        pos < end;
        pos += 4) {
        original_offset = FUNC2(pos) - context->original_moov_size;
        new_offset = (uint64_t)original_offset + context->new_moov_size;
        FUNC1(context->dest, new_offset);
        context->dest += 8;
    }
}