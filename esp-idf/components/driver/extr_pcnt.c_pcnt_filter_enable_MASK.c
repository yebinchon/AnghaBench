#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t pcnt_unit_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_6__ {TYPE_2__* conf_unit; } ;
struct TYPE_4__ {int filter_en; } ;
struct TYPE_5__ {TYPE_1__ conf0; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_3__ PCNT ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCNT_UNIT_ERR_STR ; 
 size_t PCNT_UNIT_MAX ; 

esp_err_t FUNC1(pcnt_unit_t unit)
{
    FUNC0(unit < PCNT_UNIT_MAX, PCNT_UNIT_ERR_STR, ESP_ERR_INVALID_ARG);
    PCNT.conf_unit[unit].conf0.filter_en = 1;
    return ESP_OK;
}