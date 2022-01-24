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
struct TYPE_3__ {int* key; } ;
typedef  TYPE_1__ AVXTEA ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC3(AVXTEA *ctx, uint8_t *dst, const uint8_t *src,
                              int decrypt, uint8_t *iv)
{
    uint32_t v0, v1;
    int i;

    v0 = FUNC0(src);
    v1 = FUNC0(src + 4);

    if (decrypt) {
        uint32_t delta = 0x9E3779B9, sum = delta * 32;

        for (i = 0; i < 32; i++) {
            v1 -= (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + ctx->key[(sum >> 11) & 3]);
            sum -= delta;
            v0 -= (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + ctx->key[sum & 3]);
        }
        if (iv) {
            v0 ^= FUNC0(iv);
            v1 ^= FUNC0(iv + 4);
            FUNC2(iv, src, 8);
        }
    } else {
        uint32_t sum = 0, delta = 0x9E3779B9;

        for (i = 0; i < 32; i++) {
            v0 += (((v1 << 4) ^ (v1 >> 5)) + v1) ^ (sum + ctx->key[sum & 3]);
            sum += delta;
            v1 += (((v0 << 4) ^ (v0 >> 5)) + v0) ^ (sum + ctx->key[(sum >> 11) & 3]);
        }
    }

    FUNC1(dst, v0);
    FUNC1(dst + 4, v1);
}