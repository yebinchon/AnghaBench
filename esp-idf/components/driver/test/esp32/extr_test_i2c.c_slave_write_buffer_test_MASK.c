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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  i2c_config_t ;

/* Variables and functions */
 int DATA_LENGTH ; 
 int /*<<< orphan*/  I2C_MODE_SLAVE ; 
 int /*<<< orphan*/  I2C_SLAVE_NUM ; 
 int /*<<< orphan*/  I2C_SLAVE_RX_BUF_LEN ; 
 int /*<<< orphan*/  I2C_SLAVE_TX_BUF_LEN ; 
 int /*<<< orphan*/  RW_TEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    uint8_t *data_wr = (uint8_t *) FUNC8(DATA_LENGTH);
    int size_rd;

    i2c_config_t conf_slave = FUNC6();
    FUNC0(FUNC5( I2C_SLAVE_NUM, &conf_slave));
    FUNC0(FUNC4(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    FUNC9("i2c slave init finish");

    FUNC10("slave write");
    for (int i = 0; i < DATA_LENGTH / 2; i++) {
        data_wr[i] = i;
    }
    size_rd = FUNC7(I2C_SLAVE_NUM, data_wr, RW_TEST_LENGTH, 2000 / portTICK_RATE_MS);
    FUNC1(data_wr, size_rd);
    FUNC9("master read");
    FUNC10("ready to delete");
    FUNC2(data_wr);
    FUNC3(I2C_SLAVE_NUM);
}