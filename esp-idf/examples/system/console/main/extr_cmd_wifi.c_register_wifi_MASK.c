#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* command; char* help; TYPE_2__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  password; int /*<<< orphan*/  ssid; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  connect ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 TYPE_2__ join_args ; 

void FUNC6(void)
{
    join_args.timeout = FUNC2(NULL, "timeout", "<t>", "Connection timeout, ms");
    join_args.ssid = FUNC4(NULL, NULL, "<ssid>", "SSID of AP");
    join_args.password = FUNC3(NULL, NULL, "<pass>", "PSK of AP");
    join_args.end = FUNC1(2);

    const esp_console_cmd_t join_cmd = {
        .command = "join",
        .help = "Join WiFi AP as a station",
        .hint = NULL,
        .func = &connect,
        .argtable = &join_args
    };

    FUNC0( FUNC5(&join_cmd) );
}