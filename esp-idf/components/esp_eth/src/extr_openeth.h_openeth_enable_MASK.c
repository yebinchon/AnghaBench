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

/* Variables and functions */
 int /*<<< orphan*/  OPENETH_INT_MASK_REG ; 
 int OPENETH_INT_RXB ; 
 int /*<<< orphan*/  OPENETH_MODER_REG ; 
 int OPENETH_PRO ; 
 int OPENETH_RXEN ; 
 int OPENETH_TXEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1(void)
{
    FUNC0(OPENETH_MODER_REG, OPENETH_TXEN | OPENETH_RXEN | OPENETH_PRO);
    FUNC0(OPENETH_INT_MASK_REG, OPENETH_INT_RXB);
}