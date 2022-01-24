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
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 int /*<<< orphan*/  ACK_VAL ; 
 int /*<<< orphan*/  DATA_LENGTH ; 
 int ESP_SLAVE_ADDR ; 
 int /*<<< orphan*/  I2C_MASTER_NUM ; 
 int /*<<< orphan*/  I2C_MASTER_RX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MASTER_TX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MODE_MASTER ; 
 int /*<<< orphan*/  NACK_VAL ; 
 int READ_BIT ; 
 int RW_TEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC17 (char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 

__attribute__((used)) static void FUNC21(void)
{
    uint8_t *data_rd = (uint8_t *) FUNC15(DATA_LENGTH);
    FUNC16(data_rd, 0, DATA_LENGTH);
    i2c_config_t conf_master = FUNC8();
    FUNC1(FUNC14(I2C_MASTER_NUM, &conf_master));
    FUNC1(FUNC6(I2C_MASTER_NUM, I2C_MODE_MASTER,
                                   I2C_MASTER_RX_BUF_DISABLE,
                                   I2C_MASTER_TX_BUF_DISABLE, 0));
    FUNC19("i2c slave init finish");

    i2c_cmd_handle_t cmd = FUNC3();
    FUNC11(cmd);
    FUNC13(cmd, ( ESP_SLAVE_ADDR << 1 ) | READ_BIT, ACK_CHECK_EN);

    FUNC18("slave write");
    FUNC19("master read");
    FUNC9(cmd, data_rd, RW_TEST_LENGTH-1, ACK_VAL);
    FUNC10(cmd, data_rd + RW_TEST_LENGTH-1, NACK_VAL);
    FUNC12(cmd);
    FUNC7(I2C_MASTER_NUM, cmd, 5000 / portTICK_RATE_MS);
    FUNC4(cmd);
    FUNC20(100 / portTICK_RATE_MS);
    for (int i = 0; i < RW_TEST_LENGTH; i++) {
        FUNC17("%d\n", data_rd[i]);
        FUNC0(data_rd[i]==i);
    }
    FUNC2(data_rd);
    FUNC18("ready to delete");
    FUNC5(I2C_MASTER_NUM);
}