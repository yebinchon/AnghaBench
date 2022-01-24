#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_customMem ;
struct TYPE_5__ {int /*<<< orphan*/  bmi2; int /*<<< orphan*/  customMem; } ;
typedef  TYPE_1__ ZSTD_CCtx ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 int /*<<< orphan*/  ZSTD_reset_parameters ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(ZSTD_CCtx* cctx, ZSTD_customMem memManager)
{
    FUNC4(cctx != NULL);
    FUNC5(cctx, 0, sizeof(*cctx));
    cctx->customMem = memManager;
    cctx->bmi2 = FUNC2(FUNC1());
    {   size_t const err = FUNC0(cctx, ZSTD_reset_parameters);
        FUNC4(!FUNC3(err));
        (void)err;
    }
}