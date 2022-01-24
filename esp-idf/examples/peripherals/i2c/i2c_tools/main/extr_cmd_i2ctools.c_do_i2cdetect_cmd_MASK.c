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
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 scalar_t__ ESP_ERR_TIMEOUT ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  I2C_MASTER_RX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MASTER_TX_BUF_DISABLE ; 
 int /*<<< orphan*/  I2C_MODE_MASTER ; 
 int WRITE_BIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  i2c_port ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static int FUNC11(int argc, char **argv)
{
    FUNC6();
    FUNC4(i2c_port, I2C_MODE_MASTER, I2C_MASTER_RX_BUF_DISABLE, I2C_MASTER_TX_BUF_DISABLE, 0);
    uint8_t address;
    FUNC10("     0  1  2  3  4  5  6  7  8  9  a  b  c  d  e  f\r\n");
    for (int i = 0; i < 128; i += 16) {
        FUNC10("%02x: ", i);
        for (int j = 0; j < 16; j++) {
            FUNC0(stdout);
            address = i + j;
            i2c_cmd_handle_t cmd = FUNC1();
            FUNC7(cmd);
            FUNC9(cmd, (address << 1) | WRITE_BIT, ACK_CHECK_EN);
            FUNC8(cmd);
            esp_err_t ret = FUNC5(i2c_port, cmd, 50 / portTICK_RATE_MS);
            FUNC2(cmd);
            if (ret == ESP_OK) {
                FUNC10("%02x ", address);
            } else if (ret == ESP_ERR_TIMEOUT) {
                FUNC10("UU ");
            } else {
                FUNC10("-- ");
            }
        }
        FUNC10("\r\n");
    }

    FUNC3(i2c_port);
    return 0;
}