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
 int RW_TEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (int /*<<< orphan*/ ,int*,int,int) ; 
 scalar_t__ FUNC9 (int) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    int size_rd = 0;
    int times = 3;
    uint8_t *data_rd = (uint8_t *) FUNC9(DATA_LENGTH * 3);

    i2c_config_t conf_slave = FUNC7();
    FUNC1(FUNC6( I2C_SLAVE_NUM, &conf_slave));
    FUNC1(FUNC5(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    FUNC11("i2c slave init finish");
    FUNC12("master write");

    while (1) {
        int len = FUNC8( I2C_SLAVE_NUM, data_rd + size_rd, RW_TEST_LENGTH * 3, 10000 / portTICK_RATE_MS);
        if (len == 0) {
            break;
        }
        size_rd += len;
    }
    FUNC2(data_rd, size_rd);
    for (int j = 0; j < times; j++) {
        for (int i = 0; i < RW_TEST_LENGTH; i++) {
            FUNC10("data: %d, %d\n", data_rd[j * RW_TEST_LENGTH + i], (i % 129 + j));
            FUNC0(data_rd[j * RW_TEST_LENGTH + i] == (i % 129 + j));
        }
    }
    FUNC3(data_rd);
    FUNC11("ready to delete");
    FUNC4(I2C_SLAVE_NUM);
}