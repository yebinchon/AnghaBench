#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_11__ {int /*<<< orphan*/  func; scalar_t__ argtable; int /*<<< orphan*/  hint; int /*<<< orphan*/  help; int /*<<< orphan*/ * command; } ;
typedef  TYPE_1__ esp_console_cmd_t ;
struct TYPE_12__ {char* hint; int /*<<< orphan*/  func; scalar_t__ argtable; int /*<<< orphan*/  help; int /*<<< orphan*/ * command; } ;
typedef  TYPE_2__ cmd_item_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC5 (char**,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  next ; 
 int /*<<< orphan*/ * FUNC9 (char**,size_t*) ; 
 int /*<<< orphan*/  s_cmd_list ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char) ; 

esp_err_t FUNC11(const esp_console_cmd_t *cmd)
{
    cmd_item_t *item = (cmd_item_t *) FUNC6(1, sizeof(*item));
    if (item == NULL) {
        return ESP_ERR_NO_MEM;
    }
    if (cmd->command == NULL) {
        FUNC8(item);
        return ESP_ERR_INVALID_ARG;
    }
    if (FUNC10(cmd->command, ' ') != NULL) {
        FUNC8(item);
        return ESP_ERR_INVALID_ARG;
    }
    item->command = cmd->command;
    item->help = cmd->help;
    if (cmd->hint) {
        /* Prepend a space before the hint. It separates command name and
         * the hint. arg_print_syntax below adds this space as well.
         */
        int unused __attribute__((unused));
        unused = FUNC5(&item->hint, " %d", cmd->hint);
    } else if (cmd->argtable) {
        /* Generate hint based on cmd->argtable */
        char *buf = NULL;
        size_t buf_size = 0;
        FILE *f = FUNC9(&buf, &buf_size);
        if (f != NULL) {
            FUNC4(f, cmd->argtable, NULL);
            FUNC7(f);
        }
        item->hint = buf;
    }
    item->argtable = cmd->argtable;
    item->func = cmd->func;
    cmd_item_t *last = FUNC0(&s_cmd_list);
    if (last == NULL) {
        FUNC2(&s_cmd_list, item, next);
    } else {
        cmd_item_t *it;
        while ((it = FUNC3(last, next)) != NULL) {
            last = it;
        }
        FUNC1(last, item, next);
    }
    return ESP_OK;
}