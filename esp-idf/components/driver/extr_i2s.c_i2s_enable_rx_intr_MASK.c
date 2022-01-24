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
struct TYPE_3__ {int in_suc_eof; int in_dscr_err; } ;
struct TYPE_4__ {TYPE_1__ int_ena; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__** I2S ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

esp_err_t FUNC2(i2s_port_t i2s_num)
{

    FUNC0();
    I2S[i2s_num]->int_ena.in_suc_eof = 1;
    I2S[i2s_num]->int_ena.in_dscr_err = 1;
    FUNC1();
    return ESP_OK;
}