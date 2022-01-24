#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_7__ {int /*<<< orphan*/  ssaTrack; int /*<<< orphan*/  line; } ;
typedef  TYPE_2__ hb_filter_private_t ;
struct TYPE_6__ {scalar_t__ start; scalar_t__ stop; } ;
struct TYPE_8__ {int /*<<< orphan*/  size; TYPE_1__ s; scalar_t__ data; } ;
typedef  TYPE_3__ hb_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,char*) ; 
 char* FUNC3 (char*,char) ; 

__attribute__((used)) static void FUNC4(hb_filter_private_t *pv, hb_buffer_t *sub)
{
    int64_t start, dur;
    char *ssa, *tmp;

    // libass expects every chunk to have a unique sequence number
    // since we are repeating subs in some cases, we need to replace
    // the sequence number.
    tmp = FUNC3((char*)sub->data, ',');
    if (tmp == NULL)
        return;

    ssa = FUNC2("%d%s", ++pv->line, tmp);

    // Parse MKV-SSA packet
    // SSA subtitles always have an explicit stop time, so we
    // do not need to do special processing for stop == AV_NOPTS_VALUE
    start = sub->s.start;
    dur = sub->s.stop - sub->s.start;
    FUNC0(pv->ssaTrack, ssa, sub->size, start, dur);
    FUNC1(ssa);
}