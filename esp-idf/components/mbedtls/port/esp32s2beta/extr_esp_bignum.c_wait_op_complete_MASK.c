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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RSA_CLEAR_INTERRUPT_REG ; 
 int /*<<< orphan*/  RSA_QUERY_INTERRUPT_REG ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  op_complete_sem ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC5(uint32_t op_reg)
{
#ifdef CONFIG_MBEDTLS_MPI_USE_INTERRUPT
    if (!xSemaphoreTake(op_complete_sem, 2000 / portTICK_PERIOD_MS)) {
        ESP_LOGE(TAG, "Timed out waiting for RSA operation (op_reg 0x%x int_reg 0x%x)",
                 op_reg, DPORT_REG_READ(RSA_QUERY_INTERRUPT_REG));
        abort(); /* indicates a fundamental problem with driver */
    }
#else
    while(FUNC0(RSA_QUERY_INTERRUPT_REG) != 1)
       { }

    /* clear the interrupt */
    FUNC1(RSA_CLEAR_INTERRUPT_REG, 1);
#endif

}