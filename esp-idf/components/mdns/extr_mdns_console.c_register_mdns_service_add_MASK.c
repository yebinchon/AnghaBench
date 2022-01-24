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
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  txt; int /*<<< orphan*/  instance; int /*<<< orphan*/  port; void* proto; void* service; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  cmd_mdns_service_add ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*) ; 
 TYPE_2__ mdns_add_args ; 

__attribute__((used)) static void FUNC7(void)
{
    mdns_add_args.service = FUNC4(NULL, NULL, "<service>", "MDNS Service");
    mdns_add_args.proto = FUNC4(NULL, NULL, "<proto>", "IP Protocol");
    mdns_add_args.port = FUNC2(NULL, NULL, "<port>", "Service Port");
    mdns_add_args.instance = FUNC3("i", "instance", "<instance>", "Instance name");
    mdns_add_args.txt = FUNC5(NULL, NULL, "item", 0, 30, "TXT Items (name=value)");
    mdns_add_args.end = FUNC1(2);

    const esp_console_cmd_t cmd_add = {
        .command = "mdns_service_add",
        .help = "Add service to MDNS",
        .hint = NULL,
        .func = &cmd_mdns_service_add,
        .argtable = &mdns_add_args
    };

    FUNC0( FUNC6(&cmd_add) );
}