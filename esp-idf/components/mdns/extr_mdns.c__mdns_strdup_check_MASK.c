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
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 int /*<<< orphan*/  ESP_OK ; 
 char* FUNC0 (char*) ; 

__attribute__((used)) static esp_err_t FUNC1(char ** out, char * in)
{
    if (in && in[0]) {
        *out = FUNC0(in);
        if (!*out) {
            return ESP_FAIL;
        }
        return ESP_OK;
    }
    *out = NULL;
    return ESP_OK;
}