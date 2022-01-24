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
typedef  scalar_t__ esp_reset_reason_t ;

/* Variables and functions */
 scalar_t__ ESP_RST_UNKNOWN ; 
 int /*<<< orphan*/  PRO_CPU_NUM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  s_reset_reason ; 

__attribute__((used)) static void __attribute__((constructor)) FUNC4(void)
{
    esp_reset_reason_t hint = FUNC1();
    s_reset_reason = FUNC2(FUNC3(PRO_CPU_NUM),
                                      hint);
    if (hint != ESP_RST_UNKNOWN) {
        FUNC0();
    }
}