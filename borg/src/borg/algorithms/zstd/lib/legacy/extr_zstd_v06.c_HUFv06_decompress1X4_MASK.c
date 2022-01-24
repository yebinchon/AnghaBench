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
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  DTable ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HUFv06_MAX_TABLELOG ; 
 size_t FUNC2 (void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,void const*,size_t) ; 
 int /*<<< orphan*/  srcSize_wrong ; 

size_t FUNC5 (void* dst, size_t dstSize, const void* cSrc, size_t cSrcSize)
{
    FUNC1(DTable, HUFv06_MAX_TABLELOG);
    const BYTE* ip = (const BYTE*) cSrc;

    size_t const hSize = FUNC4 (DTable, cSrc, cSrcSize);
    if (FUNC3(hSize)) return hSize;
    if (hSize >= cSrcSize) return FUNC0(srcSize_wrong);
    ip += hSize;
    cSrcSize -= hSize;

    return FUNC2 (dst, dstSize, ip, cSrcSize, DTable);
}