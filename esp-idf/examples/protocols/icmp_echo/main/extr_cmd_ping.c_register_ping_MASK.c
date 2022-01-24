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
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  host; void* tos; void* count; void* data_size; void* interval; void* timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  do_ping_cmd ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const*) ; 
 TYPE_2__ ping_args ; 

void FUNC6(void)
{
    ping_args.timeout = FUNC1("W", "timeout", "<t>", "Time to wait for a response, in seconds");
    ping_args.interval = FUNC1("i", "interval", "<t>", "Wait interval seconds between sending each packet");
    ping_args.data_size = FUNC3("s", "size", "<n>", "Specify the number of data bytes to be sent");
    ping_args.count = FUNC3("c", "count", "<n>", "Stop after sending count packets");
    ping_args.tos = FUNC3("Q", "tos", "<n>", "Set Type of Service related bits in IP datagrams");
    ping_args.host = FUNC4(NULL, NULL, "<host>", "Host address");
    ping_args.end = FUNC2(1);
    const esp_console_cmd_t ping_cmd = {
        .command = "ping",
        .help = "send ICMP ECHO_REQUEST to network hosts",
        .hint = NULL,
        .func = &do_ping_cmd,
        .argtable = &ping_args
    };
    FUNC0(FUNC5(&ping_cmd));
}