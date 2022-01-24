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
typedef  int int32_t ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  re ; 
 int FUNC6 (int,int) ; 
 int FUNC7 (int,int) ; 

__attribute__((used)) static inline int FUNC8(GetBitContext *s, int n)
{
    register int sign;
    register int32_t cache;
    FUNC3(re, s);
    FUNC5(n>0 && n<=25);
    FUNC4(re, s);
    cache = FUNC1(re, s);
    sign  = FUNC6(~cache, n) >> 31;
    FUNC2(re, s, n);
    FUNC0(re, s);
    return (FUNC7(sign ^ cache, n) ^ sign) - sign;
}