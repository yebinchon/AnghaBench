
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int protocomm_req_handler_t ;
typedef int esp_err_t ;
struct TYPE_4__ {char const* command; char* help; int func; } ;
typedef TYPE_1__ esp_console_cmd_t ;
typedef int cmd ;


 int common_cmd_handler ;
 int esp_console_cmd_register (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static esp_err_t protocomm_console_add_endpoint(const char *ep_name, protocomm_req_handler_t req_handler, void *priv_data)
{
    (void) req_handler;
    (void) priv_data;

    esp_err_t ret;
    esp_console_cmd_t cmd;
    memset(&cmd, 0, sizeof(cmd));

    cmd.command = ep_name;
    cmd.help = "";
    cmd.func = common_cmd_handler;

    ret = esp_console_cmd_register(&cmd);

    return ret;
}
