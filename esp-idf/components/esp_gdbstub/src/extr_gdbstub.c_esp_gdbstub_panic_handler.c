
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int esp_gdbstub_frame_t ;
struct TYPE_2__ {scalar_t__ state; scalar_t__ paniced_task_index; int signal; scalar_t__ current_task_index; int regfile; int paniced_frame; } ;


 scalar_t__ GDBSTUB_CUR_TASK_INDEX_UNKNOWN ;
 scalar_t__ GDBSTUB_NOT_STARTED ;
 scalar_t__ GDBSTUB_STARTED ;
 int GDBSTUB_ST_ERR ;
 scalar_t__ GDBSTUB_TASK_SUPPORT_DISABLED ;
 int esp_gdbstub_frame_to_regfile (int *,int *) ;
 int esp_gdbstub_get_signal (int *) ;
 int esp_gdbstub_handle_command (unsigned char*,size_t) ;
 int esp_gdbstub_read_command (unsigned char**,size_t*) ;
 int esp_gdbstub_send_end () ;
 int esp_gdbstub_send_str_packet (char*) ;
 int esp_gdbstub_target_init () ;
 int find_paniced_task_index () ;
 int init_task_info () ;
 int memcpy (int *,int *,int) ;
 TYPE_1__ s_scratch ;
 int send_reason () ;

void esp_gdbstub_panic_handler(esp_gdbstub_frame_t *frame)
{

    esp_gdbstub_frame_to_regfile(frame, &s_scratch.regfile);
    esp_gdbstub_target_init();
    s_scratch.signal = esp_gdbstub_get_signal(frame);
    send_reason();
    while (1) {
        unsigned char *cmd;
        size_t size;
        int res = esp_gdbstub_read_command(&cmd, &size);
        if (res > 0) {

            continue;
        }
        if (res == GDBSTUB_ST_ERR) {
            esp_gdbstub_send_str_packet("E01");
            continue;
        }
        res = esp_gdbstub_handle_command(cmd, size);
        if (res == GDBSTUB_ST_ERR) {
            esp_gdbstub_send_str_packet(((void*)0));
        }
    }
}
