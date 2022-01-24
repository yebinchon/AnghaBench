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
typedef  int /*<<< orphan*/  esp_a2d_cb_param_t ;
typedef  int /*<<< orphan*/  esp_a2d_cb_event_t ;

/* Variables and functions */
 int /*<<< orphan*/  bt_app_av_sm_hdlr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(esp_a2d_cb_event_t event, esp_a2d_cb_param_t *param)
{
    FUNC0(bt_app_av_sm_hdlr, event, param, sizeof(esp_a2d_cb_param_t), NULL);
}