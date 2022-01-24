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
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  timeout; void* proto; void* service; void* instance; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  cmd_mdns_query_txt ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_2__ mdns_query_txt_args ; 

__attribute__((used)) static void FUNC5(void)
{
    mdns_query_txt_args.instance = FUNC3(NULL, NULL, "<instance>", "Instance to search for");
    mdns_query_txt_args.service = FUNC3(NULL, NULL, "<service>", "Service to search for (ex. _http, _smb, etc.)");
    mdns_query_txt_args.proto = FUNC3(NULL, NULL, "<proto>", "Protocol to search for (_tcp, _udp, etc.)");
    mdns_query_txt_args.timeout = FUNC2("t", "timeout", "<timeout>", "Timeout for this query");
    mdns_query_txt_args.end = FUNC1(2);

    const esp_console_cmd_t cmd_init = {
        .command = "mdns_query_txt",
        .help = "Query MDNS for Service TXT",
        .hint = NULL,
        .func = &cmd_mdns_query_txt,
        .argtable = &mdns_query_txt_args
    };

    FUNC0( FUNC4(&cmd_init) );
}