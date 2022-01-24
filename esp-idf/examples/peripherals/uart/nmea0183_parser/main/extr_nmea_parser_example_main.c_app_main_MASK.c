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
typedef  int /*<<< orphan*/  nmea_parser_handle_t ;
typedef  int /*<<< orphan*/  nmea_parser_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  gps_event_handler ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int portTICK_PERIOD_MS ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

void FUNC6(void)
{
    /* NMEA parser configuration */
    nmea_parser_config_t config = FUNC0();
    /* init NMEA parser library */
    nmea_parser_handle_t nmea_hdl = FUNC3(&config);
    /* register event handler for NMEA parser library */
    FUNC1(nmea_hdl, gps_event_handler, NULL);

    FUNC5(10000 / portTICK_PERIOD_MS);

    /* unregister event handler */
    FUNC4(nmea_hdl, gps_event_handler);
    /* deinit NMEA parser library */
    FUNC2(nmea_hdl);
}