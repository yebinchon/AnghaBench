#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_3__ {scalar_t__ tmo; unsigned int start; scalar_t__ elapsed; } ;
typedef  TYPE_1__ esp_apptrace_tmo_t ;

/* Variables and functions */
 void* FUNC0 (int,int) ; 
 scalar_t__ ESP_APPTRACE_TMO_INFINITE ; 
 int /*<<< orphan*/  ESP_ERR_TIMEOUT ; 
 int /*<<< orphan*/  ESP_OK ; 
 int FUNC1 () ; 
 unsigned int FUNC2 () ; 

esp_err_t FUNC3(esp_apptrace_tmo_t *tmo)
{
    int cpu_freq = FUNC1();
    if (tmo->tmo != ESP_APPTRACE_TMO_INFINITE) {
        unsigned cur = FUNC2();
        if (tmo->start <= cur) {
            tmo->elapsed = FUNC0(cur - tmo->start, cpu_freq);
        } else {
            tmo->elapsed = FUNC0(0xFFFFFFFF - tmo->start + cur, cpu_freq);
        }
        if (tmo->elapsed >= tmo->tmo) {
            return ESP_ERR_TIMEOUT;
        }
    }
    return ESP_OK;
}