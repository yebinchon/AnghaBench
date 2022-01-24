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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RSA_CLEAR_INTERRUPT_REG ; 

__attribute__((used)) static inline void FUNC1(uint32_t op_reg)
{
    /* Clear interrupt status */
    FUNC0(RSA_CLEAR_INTERRUPT_REG, 1);

    /* Note: above REG_WRITE includes a memw, so we know any writes
       to the memory blocks are also complete. */

    FUNC0(op_reg, 1);
}