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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  i2c_port_t ;
typedef  int /*<<< orphan*/  i2c_cmd_handle_t ;
typedef  int esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 int /*<<< orphan*/  ACK_VAL ; 
 int BH1750_CMD_START ; 
 int BH1750_SENSOR_ADDR ; 
 int ESP_OK ; 
 int /*<<< orphan*/  NACK_VAL ; 
 int READ_BIT ; 
 int WRITE_BIT ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static esp_err_t FUNC8(i2c_port_t i2c_num, uint8_t *data_h, uint8_t *data_l)
{
    int ret;
    i2c_cmd_handle_t cmd = FUNC0();
    FUNC4(cmd);
    FUNC6(cmd, BH1750_SENSOR_ADDR << 1 | WRITE_BIT, ACK_CHECK_EN);
    FUNC6(cmd, BH1750_CMD_START, ACK_CHECK_EN);
    FUNC5(cmd);
    ret = FUNC2(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    FUNC1(cmd);
    if (ret != ESP_OK) {
        return ret;
    }
    FUNC7(30 / portTICK_RATE_MS);
    cmd = FUNC0();
    FUNC4(cmd);
    FUNC6(cmd, BH1750_SENSOR_ADDR << 1 | READ_BIT, ACK_CHECK_EN);
    FUNC3(cmd, data_h, ACK_VAL);
    FUNC3(cmd, data_l, NACK_VAL);
    FUNC5(cmd);
    ret = FUNC2(i2c_num, cmd, 1000 / portTICK_RATE_MS);
    FUNC1(cmd);
    return ret;
}