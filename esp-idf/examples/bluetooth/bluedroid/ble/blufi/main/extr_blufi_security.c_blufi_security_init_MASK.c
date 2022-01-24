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
struct blufi_security {struct blufi_security* iv; int /*<<< orphan*/  aes; int /*<<< orphan*/  dhm; } ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_FAIL ; 
 struct blufi_security* blufi_sec ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct blufi_security*,int,int) ; 

esp_err_t FUNC4(void)
{
    blufi_sec = (struct blufi_security *)FUNC0(sizeof(struct blufi_security));
    if (blufi_sec == NULL) {
        return ESP_FAIL;
    }

    FUNC3(blufi_sec, 0x0, sizeof(struct blufi_security));

    FUNC2(&blufi_sec->dhm);
    FUNC1(&blufi_sec->aes);

    FUNC3(blufi_sec->iv, 0x0, 16);
    return 0;
}