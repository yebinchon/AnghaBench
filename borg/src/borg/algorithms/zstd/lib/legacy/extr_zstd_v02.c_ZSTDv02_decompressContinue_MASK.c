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
typedef  int /*<<< orphan*/  ZSTDv02_Dctx ;
typedef  int /*<<< orphan*/  ZSTD_DCtx ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t) ; 

size_t FUNC1(ZSTDv02_Dctx* dctx, void* dst, size_t maxDstSize, const void* src, size_t srcSize)
{
    return FUNC0((ZSTD_DCtx*)dctx, dst, maxDstSize, src, srcSize);
}