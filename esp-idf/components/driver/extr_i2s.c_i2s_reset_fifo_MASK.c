#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t i2s_port_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {int rx_fifo_reset; int tx_fifo_reset; } ;
struct TYPE_4__ {TYPE_1__ conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__** I2S ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 size_t I2S_NUM_MAX ; 

__attribute__((used)) static esp_err_t FUNC3(i2s_port_t i2s_num)
{
    FUNC0((i2s_num < I2S_NUM_MAX), "i2s_num error", ESP_ERR_INVALID_ARG);
    FUNC1();
    I2S[i2s_num]->conf.rx_fifo_reset = 1;
    I2S[i2s_num]->conf.rx_fifo_reset = 0;
    I2S[i2s_num]->conf.tx_fifo_reset = 1;
    I2S[i2s_num]->conf.tx_fifo_reset = 0;
    FUNC2();
    return ESP_OK;
}