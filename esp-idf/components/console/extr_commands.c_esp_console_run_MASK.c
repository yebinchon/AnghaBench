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
typedef  int /*<<< orphan*/  esp_err_t ;
struct TYPE_4__ {int (* func ) (size_t,char**) ;} ;
typedef  TYPE_1__ cmd_item_t ;
struct TYPE_5__ {int /*<<< orphan*/  max_cmdline_args; int /*<<< orphan*/  max_cmdline_length; } ;

/* Variables and functions */
 int /*<<< orphan*/  ESP_ERR_INVALID_ARG ; 
 int /*<<< orphan*/  ESP_ERR_INVALID_STATE ; 
 int /*<<< orphan*/  ESP_ERR_NOT_FOUND ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  ESP_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char**) ; 
 TYPE_2__ s_config ; 
 int /*<<< orphan*/ * s_tmp_line_buf ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (size_t,char**) ; 

esp_err_t FUNC6(const char *cmdline, int *cmd_ret)
{
    if (s_tmp_line_buf == NULL) {
        return ESP_ERR_INVALID_STATE;
    }
    char **argv = (char **) FUNC0(s_config.max_cmdline_args, sizeof(char *));
    if (argv == NULL) {
        return ESP_ERR_NO_MEM;
    }
    FUNC4(s_tmp_line_buf, cmdline, s_config.max_cmdline_length);

    size_t argc = FUNC1(s_tmp_line_buf, argv,
                                         s_config.max_cmdline_args);
    if (argc == 0) {
        FUNC3(argv);
        return ESP_ERR_INVALID_ARG;
    }
    const cmd_item_t *cmd = FUNC2(argv[0]);
    if (cmd == NULL) {
        FUNC3(argv);
        return ESP_ERR_NOT_FOUND;
    }
    *cmd_ret = (*cmd->func)(argc, argv);
    FUNC3(argv);
    return ESP_OK;
}