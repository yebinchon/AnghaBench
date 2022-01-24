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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ACK_CHECK_EN ; 
 int ESP_SLAVE_ADDR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int WRITE_BIT ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 

__attribute__((used)) static esp_err_t FUNC8(i2c_port_t i2c_num, uint8_t *data_wr, size_t size)
{
    i2c_cmd_handle_t cmd = FUNC1();
    FUNC4(cmd);
    FUNC0(FUNC7(cmd, ( ESP_SLAVE_ADDR << 1 ) | WRITE_BIT, ACK_CHECK_EN));
    FUNC0(FUNC6(cmd, data_wr, size, ACK_CHECK_EN));
    FUNC0(FUNC5(cmd));
    esp_err_t ret = FUNC3(i2c_num, cmd, 5000 / portTICK_RATE_MS);
    FUNC2(cmd);
    return ret;
}