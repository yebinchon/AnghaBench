#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  dts_shift; } ;
typedef  TYPE_1__ MOVStreamContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  INT_MAX ; 
 int INT_MIN ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(MOVStreamContext *sc, int duration, void *logctx)
{
    if (duration < 0) {
        if (duration == INT_MIN) {
            FUNC1(logctx, AV_LOG_WARNING, "mov_update_dts_shift(): dts_shift set to %d\n", INT_MAX);
            duration++;
        }
        sc->dts_shift = FUNC0(sc->dts_shift, -duration);
    }
}