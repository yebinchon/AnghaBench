#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  const uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/ * round_key; int /*<<< orphan*/ * state; } ;
typedef  TYPE_1__ AVAES ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dec_multbl ; 
 int /*<<< orphan*/  inv_sbox ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC4(AVAES *a, uint8_t *dst, const uint8_t *src,
                        int count, uint8_t *iv, int rounds)
{
    while (count--) {
        FUNC1(&a->state[1], src, &a->round_key[rounds]);
        FUNC2(a, 0, inv_sbox, dec_multbl);
        if (iv) {
            FUNC1(&a->state[0], iv, &a->state[0]);
            FUNC3(iv, src, 16);
        }
        FUNC0(dst, &a->state[0], &a->round_key[0]);
        src += 16;
        dst += 16;
    }
}