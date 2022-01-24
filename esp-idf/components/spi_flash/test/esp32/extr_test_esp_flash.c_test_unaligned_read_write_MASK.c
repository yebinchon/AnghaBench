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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  esp_flash_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,scalar_t__,int) ; 
 scalar_t__ FUNC7 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int) ; 
 int FUNC9 (char const*) ; 

void FUNC10(esp_flash_t *chip)
{
    FUNC0(TAG, "Testing chip %p...", chip);
    uint32_t offs = FUNC4(chip, 2);

    const char *msg = "i am a message";
    FUNC1(FUNC9(msg) + 1 % 4 != 0);
    FUNC2(ESP_OK, FUNC6(chip, msg, offs + 1, FUNC9(msg) + 1) );

    char buf[FUNC9(msg) + 1];

    FUNC8(buf, 0xEE, sizeof(buf));

    FUNC2(ESP_OK, FUNC5(chip, buf, offs + 1, FUNC9(msg) + 1) );
    FUNC3(msg, buf, FUNC9(msg));
    FUNC1(FUNC7(buf, msg, FUNC9(msg) + 1) == 0);
}