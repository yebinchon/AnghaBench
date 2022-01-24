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
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  re ; 
 int FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC9(GetBitContext *s, int n)
{
#if CACHED_BITSTREAM_READER
    int32_t cache = show_bits(s, 32);
    int sign = ~cache >> 31;
    skip_remaining(s, n);

    return ((((uint32_t)(sign ^ cache)) >> (32 - n)) ^ sign) - sign;
#else
    register int sign;
    register int32_t cache;
    FUNC4(re, s);
    FUNC6(n>0 && n<=25);
    FUNC5(re, s);
    cache = FUNC1(re, s);
    sign  = ~cache >> 31;
    FUNC2(re, s, n);
    FUNC0(re, s);
    return (FUNC3(sign ^ cache, n) ^ sign) - sign;
#endif
}