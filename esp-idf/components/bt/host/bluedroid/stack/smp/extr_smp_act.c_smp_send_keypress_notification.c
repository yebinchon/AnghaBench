
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_4__ {int local_keypress_notification; } ;
typedef TYPE_1__ tSMP_CB ;
typedef int UINT8 ;


 int SMP_OPCODE_PAIR_KEYPR_NOTIF ;
 int smp_send_cmd (int ,TYPE_1__*) ;

void smp_send_keypress_notification(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    p_cb->local_keypress_notification = *(UINT8 *) p_data;
    smp_send_cmd(SMP_OPCODE_PAIR_KEYPR_NOTIF, p_cb);
}
