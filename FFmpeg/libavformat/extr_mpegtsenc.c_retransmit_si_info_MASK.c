#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {scalar_t__ last_sdt_ts; scalar_t__ sdt_period; scalar_t__ last_pat_ts; scalar_t__ pat_period; int nb_services; int /*<<< orphan*/ * services; } ;
typedef  TYPE_1__ MpegTSWrite ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AV_NOPTS_VALUE ; 
 void* FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, int force_pat, int force_sdt, int64_t pcr)
{
    MpegTSWrite *ts = s->priv_data;
    int i;

    if ((pcr != AV_NOPTS_VALUE && ts->last_sdt_ts == AV_NOPTS_VALUE) ||
        (pcr != AV_NOPTS_VALUE && pcr - ts->last_sdt_ts >= ts->sdt_period) ||
        force_sdt
    ) {
        if (pcr != AV_NOPTS_VALUE)
            ts->last_sdt_ts = FUNC0(pcr, ts->last_sdt_ts);
        FUNC3(s);
    }
    if ((pcr != AV_NOPTS_VALUE && ts->last_pat_ts == AV_NOPTS_VALUE) ||
        (pcr != AV_NOPTS_VALUE && pcr - ts->last_pat_ts >= ts->pat_period) ||
        force_pat) {
        if (pcr != AV_NOPTS_VALUE)
            ts->last_pat_ts = FUNC0(pcr, ts->last_pat_ts);
        FUNC1(s);
        for (i = 0; i < ts->nb_services; i++)
            FUNC2(s, ts->services[i]);
    }
}