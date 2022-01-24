#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {TYPE_1__* internal; } ;
struct TYPE_8__ {void* shortest_end; int /*<<< orphan*/  raw_packet_buffer_remaining_size; void* offset; } ;
typedef  TYPE_1__ AVFormatInternal ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 void* AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  RAW_PACKET_BUFFER_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

AVFormatContext *FUNC4(void)
{
    AVFormatContext *ic;
    AVFormatInternal *internal;
    ic = FUNC1(sizeof(AVFormatContext));
    if (!ic) return ic;

    internal = FUNC2(sizeof(*internal));
    if (!internal) {
        FUNC0(ic);
        return NULL;
    }
    FUNC3(ic);
    ic->internal = internal;
    ic->internal->offset = AV_NOPTS_VALUE;
    ic->internal->raw_packet_buffer_remaining_size = RAW_PACKET_BUFFER_SIZE;
    ic->internal->shortest_end = AV_NOPTS_VALUE;

    return ic;
}