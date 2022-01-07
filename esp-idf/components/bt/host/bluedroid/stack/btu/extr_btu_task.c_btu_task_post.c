
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
 int bta_sys_event ;
 int btu_bta_alarm_process ;
 int btu_general_alarm_process ;
 int btu_hci_msg_process ;
 int btu_l2cap_alarm_process ;
 int btu_task_start_up ;
 int btu_thread ;
 int osi_thread_post (int ,int ,void*,int ,int) ;

bool btu_task_post(uint32_t sig, void *param, uint32_t timeout)
{
    bool status = 0;

    switch (sig) {
        case 128:
            status = osi_thread_post(btu_thread, btu_task_start_up, param, 0, timeout);
            break;
        case 131:
            status = osi_thread_post(btu_thread, btu_hci_msg_process, param, 0, timeout);
            break;
        case 132:
        case 129:
            status = osi_thread_post(btu_thread, btu_general_alarm_process, param, 0, timeout);
            break;
        case 130:
            status = osi_thread_post(btu_thread, btu_l2cap_alarm_process, param, 0, timeout);
            break;
        default:
            break;
    }

    return status;
}
