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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ EventBits_t ;

/* Variables and functions */
 int /*<<< orphan*/  DISCONNECT_EVENT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int portTICK_RATE_MS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wifi_events ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC11(void)
{
    char mac_str[19];
    uint8_t mac[6];
    EventBits_t bits;

    FUNC5();

    FUNC3();

    FUNC8("SoftAP mac", mac_str, 19);

    FUNC1(FUNC7(mac_str, mac));

    FUNC9(mac);

    FUNC6("STA connected");

    bits = FUNC10(wifi_events, DISCONNECT_EVENT, 1, 0, 60000 / portTICK_RATE_MS);
    // disconnect event not triggered
    FUNC2("wait finish\n");
    FUNC0(bits == 0);

    FUNC4();
}