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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  sh2rec_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  EMIT_INST ; 

__attribute__((used)) static inline void FUNC0(sh2rec_block_t *b, int m, int n) {
    uint16_t inst = 0x6002 | (n << 8) | (m << 4);
    EMIT_INST;
}