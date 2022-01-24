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
struct TYPE_5__ {int /*<<< orphan*/  end; void* max_results; void* timeout; int /*<<< orphan*/  hostname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  cmd_mdns_query_ip ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_2__ mdns_query_ip_args ; 

__attribute__((used)) static void FUNC5(void)
{
    mdns_query_ip_args.hostname = FUNC3(NULL, NULL, "<hostname>", "Hostname that is searched for");
    mdns_query_ip_args.timeout = FUNC2("t", "timeout", "<timeout>", "Timeout for this query");
    mdns_query_ip_args.max_results = FUNC2("m", "max_results", "<max_results>", "Maximum results returned");
    mdns_query_ip_args.end = FUNC1(2);

    const esp_console_cmd_t cmd_init = {
        .command = "mdns_query_ip",
        .help = "Query MDNS for IP",
        .hint = NULL,
        .func = &cmd_mdns_query_ip,
        .argtable = &mdns_query_ip_args
    };

    FUNC0( FUNC4(&cmd_init) );
}