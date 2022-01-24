#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int interval; scalar_t__ tmr; } ;
struct TYPE_7__ {int /*<<< orphan*/  arg; int /*<<< orphan*/  (* cb ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {scalar_t__ tmr; } ;
struct TYPE_9__ {int active_level; int serial_thres_sec; TYPE_3__ tap_rls_cb; TYPE_2__ tap_psh_cb; TYPE_1__ press_serial_cb; int /*<<< orphan*/  state; int /*<<< orphan*/  io_num; } ;
typedef  TYPE_4__ button_dev_t ;
struct TYPE_10__ {TYPE_4__* pbtn; } ;
typedef  TYPE_5__ button_cb_t ;

/* Variables and functions */
 int /*<<< orphan*/  BUTTON_STATE_PUSH ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  portMAX_DELAY ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void* tmr)
{
    #if !USE_ESP_TIMER
    button_cb_t* btn_cb = (button_cb_t*) FUNC4(tmr);
    #else
    button_cb_t* btn_cb = (button_cb_t*)(tmr);
    #endif

    button_dev_t* btn = btn_cb->pbtn;
    FUNC0(btn->tap_rls_cb.tmr);

    int lv = FUNC3(btn->io_num);

    if (btn->active_level == lv) {
        // high, then key is up
        btn->state = BUTTON_STATE_PUSH;
        if (btn->press_serial_cb.tmr) {
            #if !USE_ESP_TIMER
            FUNC6(btn->press_serial_cb.tmr, btn->serial_thres_sec*1000 / portTICK_PERIOD_MS, portMAX_DELAY);
            FUNC7(btn->press_serial_cb.tmr, portMAX_DELAY);
            #else
            esp_timer_stop(btn->press_serial_cb.tmr);
            esp_timer_start_once(btn->press_serial_cb.tmr, btn->serial_thres_sec * 1000 * 1000);
            #endif

        }
        if (btn->tap_psh_cb.cb) {
            btn->tap_psh_cb.cb(btn->tap_psh_cb.arg);
        }
    } else {
        // 50ms, check if this is a real key up
        if (btn->tap_rls_cb.tmr) {
            FUNC0(btn->tap_rls_cb.tmr);
            #if !USE_ESP_TIMER
            FUNC7(btn->tap_rls_cb.tmr, portMAX_DELAY);
            #else
            esp_timer_start_once(btn->tap_rls_cb.tmr, btn->tap_rls_cb.interval * portTICK_PERIOD_MS * 1000);
            #endif
        }
    }
}