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
typedef  int uint32_t ;
struct TYPE_3__ {int rounds; int* key; } ;
typedef  TYPE_1__ AVTEA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(AVTEA *ctx, uint8_t *dst, const uint8_t *src,
                          int decrypt, uint8_t *iv)
{
    uint32_t v0, v1;
    int rounds = ctx->rounds;
    uint32_t k0, k1, k2, k3;
    k0 = ctx->key[0];
    k1 = ctx->key[1];
    k2 = ctx->key[2];
    k3 = ctx->key[3];

    v0 = FUNC0(src);
    v1 = FUNC0(src + 4);

    if (decrypt) {
        int i;
        uint32_t delta = 0x9E3779B9U, sum = delta * (rounds / 2);

        for (i = 0; i < rounds / 2; i++) {
            v1 -= ((v0 << 4) + k2) ^ (v0 + sum) ^ ((v0 >> 5) + k3);
            v0 -= ((v1 << 4) + k0) ^ (v1 + sum) ^ ((v1 >> 5) + k1);
            sum -= delta;
        }
        if (iv) {
            v0 ^= FUNC0(iv);
            v1 ^= FUNC0(iv + 4);
            FUNC2(iv, src, 8);
        }
    } else {
        int i;
        uint32_t sum = 0, delta = 0x9E3779B9U;

        for (i = 0; i < rounds / 2; i++) {
            sum += delta;
            v0 += ((v1 << 4) + k0) ^ (v1 + sum) ^ ((v1 >> 5) + k1);
            v1 += ((v0 << 4) + k2) ^ (v0 + sum) ^ ((v0 >> 5) + k3);
        }
    }

    FUNC1(dst, v0);
    FUNC1(dst + 4, v1);
}