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
typedef  int /*<<< orphan*/  ZSTDMT_parameter ;
struct TYPE_3__ {int /*<<< orphan*/  params; } ;
typedef  TYPE_1__ ZSTDMT_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

size_t FUNC2(ZSTDMT_CCtx* mtctx, ZSTDMT_parameter parameter, int value)
{
    FUNC0(4, "ZSTDMT_setMTCtxParameter");
    return FUNC1(&mtctx->params, parameter, value);
}