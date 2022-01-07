
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int esp_err_t ;
struct TYPE_4__ {int (* func ) (size_t,char**) ;} ;
typedef TYPE_1__ cmd_item_t ;
struct TYPE_5__ {int max_cmdline_args; int max_cmdline_length; } ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_INVALID_STATE ;
 int ESP_ERR_NOT_FOUND ;
 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 scalar_t__ calloc (int ,int) ;
 size_t esp_console_split_argv (int *,char**,int ) ;
 TYPE_1__* find_command_by_name (char*) ;
 int free (char**) ;
 TYPE_2__ s_config ;
 int * s_tmp_line_buf ;
 int strlcpy (int *,char const*,int ) ;
 int stub1 (size_t,char**) ;

esp_err_t esp_console_run(const char *cmdline, int *cmd_ret)
{
    if (s_tmp_line_buf == ((void*)0)) {
        return ESP_ERR_INVALID_STATE;
    }
    char **argv = (char **) calloc(s_config.max_cmdline_args, sizeof(char *));
    if (argv == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    strlcpy(s_tmp_line_buf, cmdline, s_config.max_cmdline_length);

    size_t argc = esp_console_split_argv(s_tmp_line_buf, argv,
                                         s_config.max_cmdline_args);
    if (argc == 0) {
        free(argv);
        return ESP_ERR_INVALID_ARG;
    }
    const cmd_item_t *cmd = find_command_by_name(argv[0]);
    if (cmd == ((void*)0)) {
        free(argv);
        return ESP_ERR_NOT_FOUND;
    }
    *cmd_ret = (*cmd->func)(argc, argv);
    free(argv);
    return ESP_OK;
}
