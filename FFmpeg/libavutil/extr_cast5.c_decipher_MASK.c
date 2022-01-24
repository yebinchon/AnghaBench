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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_3__ {int rounds; } ;
typedef  TYPE_1__ AVCAST5 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(AVCAST5* cs, uint8_t* dst, const uint8_t* src, uint8_t *iv)
{
    uint32_t f, I, r, l;
    l = FUNC0(src);
    r = FUNC0(src + 4);
    if (cs->rounds == 16) {
        FUNC2(l, r, 16);
        FUNC4(r, l, 15);
        FUNC3(l, r, 14);
        FUNC2(r, l, 13);
    }
    FUNC4(l, r, 12);
    FUNC3(r, l, 11);
    FUNC2(l, r, 10);
    FUNC4(r, l, 9);
    FUNC3(l, r, 8);
    FUNC2(r, l, 7);
    FUNC4(l, r, 6);
    FUNC3(r, l, 5);
    FUNC2(l, r, 4);
    FUNC4(r, l, 3);
    FUNC3(l, r, 2);
    FUNC2(r, l, 1);
    if (iv) {
        r ^= FUNC0(iv);
        l ^= FUNC0(iv + 4);
        FUNC5(iv, src, 8);
    }
    FUNC1(dst, r);
    FUNC1(dst + 4, l);
}