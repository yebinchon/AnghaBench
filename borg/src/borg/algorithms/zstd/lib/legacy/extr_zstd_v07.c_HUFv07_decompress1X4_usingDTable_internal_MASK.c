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
struct TYPE_3__ {int /*<<< orphan*/  tableLog; } ;
typedef  int /*<<< orphan*/  HUFv07_DTable ;
typedef  int /*<<< orphan*/  HUFv07_DEltX4 ;
typedef  TYPE_1__ DTableDesc ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BITv07_DStream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,void const*,size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 int /*<<< orphan*/  corruption_detected ; 

__attribute__((used)) static size_t FUNC6(
          void* dst,  size_t dstSize,
    const void* cSrc, size_t cSrcSize,
    const HUFv07_DTable* DTable)
{
    BITv07_DStream_t bitD;

    /* Init */
    {   size_t const errorCode = FUNC1(&bitD, cSrc, cSrcSize);
        if (FUNC5(errorCode)) return errorCode;
    }

    /* decode */
    {   BYTE* const ostart = (BYTE*) dst;
        BYTE* const oend = ostart + dstSize;
        const void* const dtPtr = DTable+1;   /* force compiler to not use strict-aliasing */
        const HUFv07_DEltX4* const dt = (const HUFv07_DEltX4*)dtPtr;
        DTableDesc const dtd = FUNC4(DTable);
        FUNC3(ostart, &bitD, oend, dt, dtd.tableLog);
    }

    /* check */
    if (!FUNC0(&bitD)) return FUNC2(corruption_detected);

    /* decoded size */
    return dstSize;
}