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
struct TYPE_5__ {int /*<<< orphan*/  end; void* role; void* model; void* opcode; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  ble_mesh_module_publish_message ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_2__ msg_publish ; 

void FUNC5(void)
{
    msg_publish.data = FUNC3("d", NULL, "<data>", "message data");
    msg_publish.opcode = FUNC2("o", NULL, "<opcode>", "operation opcode");
    msg_publish.model = FUNC2("m", NULL, "<module>", "module published to");
    msg_publish.role = FUNC2("r", NULL, "<role>", "device role");
    msg_publish.end = FUNC1(1);

    const esp_console_cmd_t msg_publish_cmd = {
        .command = "bmpublish",
        .help = "ble mesh: publish message",
        .hint = NULL,
        .func = &ble_mesh_module_publish_message,
        .argtable = &msg_publish,
    };
    FUNC0(FUNC4(&msg_publish_cmd));
}