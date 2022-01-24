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
typedef  int /*<<< orphan*/  time_t ;
struct tm {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int const) ; 
 scalar_t__ SNTP_SYNC_STATUS_RESET ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct tm*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(void)
{
    FUNC0( FUNC8() );
    FUNC3();
    FUNC0( FUNC2() );

    /* This helper function configures Wi-Fi or Ethernet, as selected in menuconfig.
     * Read "Establishing Wi-Fi or Ethernet Connection" section in
     * examples/protocols/README.md for more information about this function.
     */
    FUNC0(FUNC4());

    FUNC6();

    // wait for time to be set
    time_t now = 0;
    struct tm timeinfo = { 0 };
    int retry = 0;
    const int retry_count = 10;
    while (FUNC9() == SNTP_SYNC_STATUS_RESET && ++retry < retry_count) {
        FUNC1(TAG, "Waiting for system time to be set... (%d/%d)", retry, retry_count);
        FUNC11(2000 / portTICK_PERIOD_MS);
    }
    FUNC10(&now);
    FUNC7(&now, &timeinfo);

    FUNC0( FUNC5() );
}