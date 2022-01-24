#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  stream; } ;
struct TYPE_9__ {int pid; int pcr_pid; void* dts; void* pts; int /*<<< orphan*/  state; int /*<<< orphan*/  stream; TYPE_2__* ts; } ;
typedef  TYPE_1__ PESContext ;
typedef  int /*<<< orphan*/  MpegTSFilter ;
typedef  TYPE_2__ MpegTSContext ;

/* Variables and functions */
 void* AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  MPEGTS_SKIP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  mpegts_push_data ; 

__attribute__((used)) static PESContext *FUNC3(MpegTSContext *ts, int pid, int pcr_pid)
{
    MpegTSFilter *tss;
    PESContext *pes;

    /* if no pid found, then add a pid context */
    pes = FUNC1(sizeof(PESContext));
    if (!pes)
        return 0;
    pes->ts      = ts;
    pes->stream  = ts->stream;
    pes->pid     = pid;
    pes->pcr_pid = pcr_pid;
    pes->state   = MPEGTS_SKIP;
    pes->pts     = AV_NOPTS_VALUE;
    pes->dts     = AV_NOPTS_VALUE;
    tss          = FUNC2(ts, pid, mpegts_push_data, pes);
    if (!tss) {
        FUNC0(pes);
        return 0;
    }
    return pes;
}