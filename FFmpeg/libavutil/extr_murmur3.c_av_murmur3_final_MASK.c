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
typedef  int uint64_t ;
struct TYPE_3__ {int h1; int h2; int len; scalar_t__ state; scalar_t__ state_pos; } ;
typedef  TYPE_1__ AVMurMur3 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC5(AVMurMur3 *c, uint8_t dst[16])
{
    uint64_t h1 = c->h1, h2 = c->h2;
    FUNC4(c->state + c->state_pos, 0, sizeof(c->state) - c->state_pos);
    h1 ^= FUNC2(c->state) ^ c->len;
    h2 ^= FUNC3(c->state) ^ c->len;
    h1 += h2;
    h2 += h1;
    h1 = FUNC1(h1);
    h2 = FUNC1(h2);
    h1 += h2;
    h2 += h1;
    FUNC0(dst, h1);
    FUNC0(dst + 8, h2);
}