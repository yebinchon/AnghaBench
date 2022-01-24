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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int rounds; } ;
typedef  TYPE_1__ AVCAST5 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(AVCAST5* cs, uint8_t* dst, const uint8_t* src)
{
    uint32_t r, l, f, I;
    l = FUNC0(src);
    r = FUNC0(src + 4);
    FUNC2(l, r, 1);
    FUNC3(r, l, 2);
    FUNC4(l, r, 3);
    FUNC2(r, l, 4);
    FUNC3(l, r, 5);
    FUNC4(r, l, 6);
    FUNC2(l, r, 7);
    FUNC3(r, l, 8);
    FUNC4(l, r, 9);
    FUNC2(r, l, 10);
    FUNC3(l, r, 11);
    FUNC4(r, l, 12);
    if (cs->rounds == 16) {
        FUNC2(l, r, 13);
        FUNC3(r, l, 14);
        FUNC4(l, r, 15);
        FUNC2(r, l, 16);
    }
    FUNC1(dst, r);
    FUNC1(dst + 4, l);
}