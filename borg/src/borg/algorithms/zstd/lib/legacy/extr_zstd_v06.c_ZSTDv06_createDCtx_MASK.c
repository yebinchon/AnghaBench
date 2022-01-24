#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTDv06_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 

ZSTDv06_DCtx* FUNC2(void)
{
    ZSTDv06_DCtx* dctx = (ZSTDv06_DCtx*)FUNC1(sizeof(ZSTDv06_DCtx));
    if (dctx==NULL) return NULL;
    FUNC0(dctx);
    return dctx;
}