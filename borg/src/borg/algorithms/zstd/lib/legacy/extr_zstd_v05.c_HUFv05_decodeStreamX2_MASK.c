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
typedef  int /*<<< orphan*/  U32 ;
typedef  int /*<<< orphan*/  HUFv05_DEltX2 ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BITv05_DStream_t ;

/* Variables and functions */
 scalar_t__ BITv05_DStream_unfinished ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ * const) ; 

__attribute__((used)) static inline size_t FUNC4(BYTE* p, BITv05_DStream_t* const bitDPtr, BYTE* const pEnd, const HUFv05_DEltX2* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;

    /* up to 4 symbols at a time */
    while ((FUNC0(bitDPtr) == BITv05_DStream_unfinished) && (p <= pEnd-4)) {
        FUNC3(p, bitDPtr);
        FUNC2(p, bitDPtr);
        FUNC3(p, bitDPtr);
        FUNC1(p, bitDPtr);
    }

    /* closer to the end */
    while ((FUNC0(bitDPtr) == BITv05_DStream_unfinished) && (p < pEnd))
        FUNC1(p, bitDPtr);

    /* no more data to retrieve from bitstream, hence no need to reload */
    while (p < pEnd)
        FUNC1(p, bitDPtr);

    return pEnd-pStart;
}