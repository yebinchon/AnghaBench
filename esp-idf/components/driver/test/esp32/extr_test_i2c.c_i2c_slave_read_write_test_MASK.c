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
 int FUNC9 (int /*<<< orphan*/ ,int*,int,int) ; 
 scalar_t__ FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int*,int /*<<< orphan*/ ,int) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void FUNC15(void)
{
    uint8_t *data_rd = (uint8_t *) FUNC10(DATA_LENGTH);
    FUNC11(data_rd, 0, DATA_LENGTH);
    uint8_t *data_wr = (uint8_t *) FUNC10(DATA_LENGTH);
    int size_rd;

    i2c_config_t conf_slave = FUNC7();
    FUNC1(FUNC6( I2C_SLAVE_NUM, &conf_slave));
    FUNC1(FUNC5(I2C_SLAVE_NUM, I2C_MODE_SLAVE,
                                   I2C_SLAVE_RX_BUF_LEN,
                                   I2C_SLAVE_TX_BUF_LEN, 0));
    FUNC13("i2c slave init finish");
    FUNC14("slave write");

    for (int i = 0; i < DATA_LENGTH / 2; i++) {
        data_wr[i] = i/2;
    }
    size_rd = FUNC9(I2C_SLAVE_NUM, data_wr, RW_TEST_LENGTH, 2000 / portTICK_RATE_MS);
    FUNC2(data_wr, size_rd);
    FUNC13("master read and write");
    FUNC14("slave read");
    size_rd = FUNC8( I2C_SLAVE_NUM, data_rd, RW_TEST_LENGTH, 1000 / portTICK_RATE_MS);
    FUNC12("slave read data is:\n");
    FUNC2(data_rd, size_rd);
    for (int i = 0; i < RW_TEST_LENGTH; i++) {
        FUNC0(data_rd[i] == i % 3);
    }
    FUNC3(data_wr);
    FUNC3(data_rd);
    FUNC13("ready to delete");
    FUNC4(I2C_SLAVE_NUM);
}