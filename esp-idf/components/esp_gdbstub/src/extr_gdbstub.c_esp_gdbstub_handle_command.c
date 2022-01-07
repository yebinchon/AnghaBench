
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ state; } ;


 int GDBSTUB_ST_ERR ;
 int GDBSTUB_ST_OK ;
 scalar_t__ GDBSTUB_TASK_SUPPORT_DISABLED ;
 int handle_G_command (unsigned char*,int) ;
 int handle_g_command (unsigned char*,int) ;
 int handle_m_command (unsigned char*,int) ;
 int handle_task_commands (unsigned char*,int) ;
 TYPE_1__ s_scratch ;
 int send_reason () ;

int esp_gdbstub_handle_command(unsigned char *cmd, int len)
{
    unsigned char *data = cmd + 1;
    if (cmd[0] == 'g')
    {
        handle_g_command(data, len - 1);
    } else if (cmd[0] == 'G') {

        handle_G_command(data, len - 1);
    } else if (cmd[0] == 'm') {

        handle_m_command(data, len - 1);
    } else if (cmd[0] == '?') {

        send_reason();




    } else {

        return GDBSTUB_ST_ERR;
    }
    return GDBSTUB_ST_OK;
}
