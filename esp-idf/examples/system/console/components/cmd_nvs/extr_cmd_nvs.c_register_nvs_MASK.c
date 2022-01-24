#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* command; char* help; TYPE_2__* argtable; int /*<<< orphan*/ * func; int /*<<< orphan*/ * hint; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_10__ {void* end; void* type; void* namespace; void* partition; void* key; void* value; } ;

/* Variables and functions */
 char* ARG_TYPE_STR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int) ; 
 void* FUNC2 (char*,char*,char*,char*) ; 
 void* FUNC3 (char*,char*,char*,char*) ; 
 TYPE_2__ erase_all_args ; 
 TYPE_2__ erase_args ; 
 int /*<<< orphan*/  erase_namespace ; 
 int /*<<< orphan*/  erase_value ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const*) ; 
 TYPE_2__ get_args ; 
 int /*<<< orphan*/  get_value ; 
 TYPE_2__ list_args ; 
 int /*<<< orphan*/  list_entries ; 
 TYPE_2__ namespace_args ; 
 TYPE_2__ set_args ; 
 int /*<<< orphan*/  set_namespace ; 
 int /*<<< orphan*/  set_value ; 

void FUNC5(void)
{
    set_args.key = FUNC3(NULL, NULL, "<key>", "key of the value to be set");
    set_args.type = FUNC3(NULL, NULL, "<type>", ARG_TYPE_STR);

    set_args.value = FUNC3("v", "value", "<value>", "value to be stored");
    set_args.end = FUNC1(2);

    get_args.key = FUNC3(NULL, NULL, "<key>", "key of the value to be read");
    get_args.type = FUNC3(NULL, NULL, "<type>", ARG_TYPE_STR);
    get_args.end = FUNC1(2);

    erase_args.key = FUNC3(NULL, NULL, "<key>", "key of the value to be erased");
    erase_args.end = FUNC1(2);

    erase_all_args.namespace = FUNC3(NULL, NULL, "<namespace>", "namespace to be erased");
    erase_all_args.end = FUNC1(2);

    namespace_args.namespace = FUNC3(NULL, NULL, "<namespace>", "namespace of the partition to be selected");
    namespace_args.end = FUNC1(2);

    list_args.partition = FUNC3(NULL, NULL, "<partition>", "partition name");
    list_args.namespace = FUNC2("n", "namespace", "<namespace>", "namespace name");
    list_args.type = FUNC2("t", "type", "<type>", ARG_TYPE_STR);
    list_args.end = FUNC1(2);

    const esp_console_cmd_t set_cmd = {
        .command = "nvs_set",
        .help = "Set key-value pair in selected namespace.\n"
        "Examples:\n"
        " nvs_set VarName i32 -v 123 \n"
        " nvs_set VarName srt -v YourString \n"
        " nvs_set VarName blob -v 0123456789abcdef \n",
        .hint = NULL,
        .func = &set_value,
        .argtable = &set_args
    };

    const esp_console_cmd_t get_cmd = {
        .command = "nvs_get",
        .help = "Get key-value pair from selected namespace. \n"
        "Example: nvs_get VarName i32",
        .hint = NULL,
        .func = &get_value,
        .argtable = &get_args
    };

    const esp_console_cmd_t erase_cmd = {
        .command = "nvs_erase",
        .help = "Erase key-value pair from current namespace",
        .hint = NULL,
        .func = &erase_value,
        .argtable = &erase_args
    };

    const esp_console_cmd_t erase_namespace_cmd = {
        .command = "nvs_erase_namespace",
        .help = "Erases specified namespace",
        .hint = NULL,
        .func = &erase_namespace,
        .argtable = &erase_all_args
    };

    const esp_console_cmd_t namespace_cmd = {
        .command = "nvs_namespace",
        .help = "Set current namespace",
        .hint = NULL,
        .func = &set_namespace,
        .argtable = &namespace_args
    };

    const esp_console_cmd_t list_entries_cmd = {
        .command = "nvs_list",
        .help = "List stored key-value pairs stored in NVS."
        "Namespace and type can be specified to print only those key-value pairs.\n"
        "Following command list variables stored inside 'nvs' partition, under namespace 'storage' with type uint32_t"
        "Example: nvs_list nvs -n storage -t u32 \n",
        .hint = NULL,
        .func = &list_entries,
        .argtable = &list_args
    };

    FUNC0(FUNC4(&set_cmd));
    FUNC0(FUNC4(&get_cmd));
    FUNC0(FUNC4(&erase_cmd));
    FUNC0(FUNC4(&namespace_cmd));
    FUNC0(FUNC4(&list_entries_cmd));
    FUNC0(FUNC4(&erase_namespace_cmd));
}