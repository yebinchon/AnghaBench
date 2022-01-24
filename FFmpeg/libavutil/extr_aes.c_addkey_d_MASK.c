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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {int* u64; } ;
typedef  TYPE_1__ av_aes_block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline void FUNC1(uint8_t *dst, const av_aes_block *src,
                            const av_aes_block *round_key)
{
    FUNC0(dst,     src->u64[0] ^ round_key->u64[0]);
    FUNC0(dst + 8, src->u64[1] ^ round_key->u64[1]);
}