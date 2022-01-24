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
typedef  int /*<<< orphan*/  HUFv05_DEltX4 ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BITv05_DStream_t ;

/* Variables and functions */
 scalar_t__ BITv05_DStream_unfinished ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const) ; 

__attribute__((used)) static inline size_t FUNC5(BYTE* p, BITv05_DStream_t* bitDPtr, BYTE* const pEnd, const HUFv05_DEltX4* const dt, const U32 dtLog)
{
    BYTE* const pStart = p;

    /* up to 8 symbols at a time */
    while ((FUNC0(bitDPtr) == BITv05_DStream_unfinished) && (p < pEnd-7)) {
        FUNC3(p, bitDPtr);
        FUNC2(p, bitDPtr);
        FUNC3(p, bitDPtr);
        FUNC1(p, bitDPtr);
    }

    /* closer to the end */
    while ((FUNC0(bitDPtr) == BITv05_DStream_unfinished) && (p <= pEnd-2))
        FUNC1(p, bitDPtr);

    while (p <= pEnd-2)
        FUNC1(p, bitDPtr);   /* no need to reload : reached the end of DStream */

    if (p < pEnd)
        p += FUNC4(p, bitDPtr, dt, dtLog);

    return p-pStart;
}