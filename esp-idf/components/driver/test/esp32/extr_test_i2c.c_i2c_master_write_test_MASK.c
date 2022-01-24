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
 int /*<<< orphan*/  I2C_MASTER_NUM ; 
 int /*<<< orphan*/  I2C_MASTER_RX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MASTER_TX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MODE_MASTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    uint8_t *data_wr = (uint8_t *) FUNC8(DATA_LENGTH);
    int i;

    i2c_config_t conf_master = FUNC5();
    FUNC0(FUNC7(I2C_MASTER_NUM, &conf_master));

    FUNC0(FUNC4(I2C_MASTER_NUM, I2C_MODE_MASTER,
                                   I2C_MASTER_RX_BUF_DISABLE,
                                   I2C_MASTER_TX_BUF_DISABLE, 0));
    FUNC10("i2c slave init finish");

    FUNC9("master write");
    for (i = 0; i < DATA_LENGTH / 2; i++) {
        data_wr[i] = i;
    }
    FUNC6(I2C_MASTER_NUM, data_wr, DATA_LENGTH / 2);
    FUNC1(data_wr, i + 1);
    FUNC2(data_wr);
    FUNC10("ready to delete");
    FUNC0(FUNC3(I2C_MASTER_NUM));
}