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
typedef  int /*<<< orphan*/  xSemaphoreHandle ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  i2c_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  DATA_LENGTH ; 
 int /*<<< orphan*/  I2C_MODE_SLAVE ; 
 int /*<<< orphan*/  I2C_SLAVE_NUM ; 
 int /*<<< orphan*/  I2C_SLAVE_RX_BUF_LEN ; 
 int /*<<< orphan*/  I2C_SLAVE_TX_BUF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int exit_flag ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ test_read_func ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void *pvParameters)
{
    xSemaphoreHandle *sema = (xSemaphoreHandle *) pvParameters;

    uint8_t *data = (uint8_t *) FUNC7(DATA_LENGTH);
    i2c_config_t conf_slave = FUNC4();
    FUNC0(FUNC3( I2C_SLAVE_NUM, &conf_slave));
    FUNC0(FUNC2(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    while (exit_flag == false) {
        if (test_read_func) {
            FUNC5(I2C_SLAVE_NUM, data, DATA_LENGTH, 0);
        } else {
            FUNC6(I2C_SLAVE_NUM, data, DATA_LENGTH, 0);
        }
    }

    FUNC1(data);
    FUNC9(*sema);
    FUNC8(NULL);
}