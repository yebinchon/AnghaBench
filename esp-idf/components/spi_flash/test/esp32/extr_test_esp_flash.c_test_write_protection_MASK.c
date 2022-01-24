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
typedef  int /*<<< orphan*/  esp_flash_t ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(esp_flash_t* chip)
{
    bool wp = true;
    esp_err_t ret = ESP_OK;
    ret = FUNC2(chip, &wp);
    FUNC1(ret);

    for (int i = 0; i < 4; i ++) {
        bool wp_write = !wp;
        ret = FUNC3(chip, wp_write);
        FUNC1(ret);

        bool wp_read;
        ret = FUNC2(chip, &wp_read);
        FUNC1(ret);
        FUNC0(wp_read == wp_write);
        wp = wp_read;
    }
}