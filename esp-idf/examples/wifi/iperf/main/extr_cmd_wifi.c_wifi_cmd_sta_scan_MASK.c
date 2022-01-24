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
struct TYPE_3__ {int /*<<< orphan*/ * ssid; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ wifi_scan_config_t ;
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WIFI_MODE_STA ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(const char* ssid)
{
    wifi_scan_config_t scan_config = { 0 };
    scan_config.ssid = (uint8_t *) ssid;

    FUNC0( FUNC2(WIFI_MODE_STA) );
    FUNC0( FUNC1(&scan_config, false) );

    return true;
}