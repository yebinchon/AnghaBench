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
struct TYPE_5__ {char* previousDstEnd; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,void*) ; 
 size_t FUNC1 (TYPE_1__*,void*,size_t,void const*,size_t,int /*<<< orphan*/ ) ; 

size_t FUNC2(ZSTD_DCtx* dctx,
                            void* dst, size_t dstCapacity,
                      const void* src, size_t srcSize)
{
    size_t dSize;
    FUNC0(dctx, dst);
    dSize = FUNC1(dctx, dst, dstCapacity, src, srcSize, /* frame */ 0);
    dctx->previousDstEnd = (char*)dst + dSize;
    return dSize;
}