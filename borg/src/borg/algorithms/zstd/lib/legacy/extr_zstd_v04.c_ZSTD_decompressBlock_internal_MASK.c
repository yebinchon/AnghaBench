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
typedef  int /*<<< orphan*/  ZSTD_DCtx ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void*,size_t,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 

__attribute__((used)) static size_t FUNC3(ZSTD_DCtx* dctx,
                            void* dst, size_t maxDstSize,
                      const void* src, size_t srcSize)
{
    /* blockType == blockCompressed */
    const BYTE* ip = (const BYTE*)src;

    /* Decode literals sub-block */
    size_t litCSize = FUNC0(dctx, src, srcSize);
    if (FUNC2(litCSize)) return litCSize;
    ip += litCSize;
    srcSize -= litCSize;

    return FUNC1(dctx, dst, maxDstSize, ip, srcSize);
}