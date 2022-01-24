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
struct TYPE_5__ {int /*<<< orphan*/  end; int /*<<< orphan*/  txt; void* proto; void* service; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  cmd_mdns_service_txt_replace ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_2__ mdns_txt_replace_args ; 

__attribute__((used)) static void FUNC5(void)
{
    mdns_txt_replace_args.service = FUNC2(NULL, NULL, "<service>", "MDNS Service");
    mdns_txt_replace_args.proto = FUNC2(NULL, NULL, "<proto>", "IP Protocol");
    mdns_txt_replace_args.txt = FUNC3(NULL, NULL, "item", 0, 30, "TXT Items (name=value)");
    mdns_txt_replace_args.end = FUNC1(2);

    const esp_console_cmd_t cmd_txt_set = {
        .command = "mdns_service_txt_replace",
        .help = "Replace MDNS service TXT items",
        .hint = NULL,
        .func = &cmd_mdns_service_txt_replace,
        .argtable = &mdns_txt_replace_args
    };

    FUNC0( FUNC4(&cmd_txt_set) );
}