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
typedef  int /*<<< orphan*/  ZSTDv07_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC3(ZSTDv07_DCtx* dctx, const ZSTDv07_DCtx* refDCtx,
                                         void* dst, size_t dstCapacity,
                                   const void* src, size_t srcSize)
{
    FUNC1(dctx, refDCtx);
    FUNC0(dctx, dst);
    return FUNC2(dctx, dst, dstCapacity, src, srcSize);
}