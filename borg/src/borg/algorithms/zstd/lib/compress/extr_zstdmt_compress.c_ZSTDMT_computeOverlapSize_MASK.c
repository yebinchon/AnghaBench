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
struct TYPE_7__ {int const windowLog; int /*<<< orphan*/  strategy; } ;
struct TYPE_6__ {scalar_t__ enableLdm; } ;
struct TYPE_8__ {int overlapLog; TYPE_2__ cParams; TYPE_1__ ldmParams; } ;
typedef  TYPE_3__ ZSTD_CCtx_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int const FUNC1 (int const,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__ const) ; 
 int FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static size_t FUNC5(ZSTD_CCtx_params const params)
{
    int const overlapRLog = 9 - FUNC3(params.overlapLog, params.cParams.strategy);
    int ovLog = (overlapRLog >= 8) ? 0 : (params.cParams.windowLog - overlapRLog);
    FUNC4(0 <= overlapRLog && overlapRLog <= 8);
    if (params.ldmParams.enableLdm) {
        /* In Long Range Mode, the windowLog is typically oversized.
         * In which case, it's preferable to determine the jobSize
         * based on chainLog instead.
         * Then, ovLog becomes a fraction of the jobSize, rather than windowSize */
        ovLog = FUNC1(params.cParams.windowLog, FUNC2(params) - 2)
                - overlapRLog;
    }
    FUNC4(0 <= ovLog && ovLog <= 30);
    FUNC0(4, "overlapLog : %i", params.overlapLog);
    FUNC0(4, "overlap size : %i", 1 << ovLog);
    return (ovLog==0) ? 0 : (size_t)1 << ovLog;
}