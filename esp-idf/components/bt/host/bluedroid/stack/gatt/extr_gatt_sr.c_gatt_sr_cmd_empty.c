
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ op_code; } ;
struct TYPE_5__ {TYPE_1__ sr_cmd; } ;
typedef TYPE_2__ tGATT_TCB ;
typedef int BOOLEAN ;



BOOLEAN gatt_sr_cmd_empty (tGATT_TCB *p_tcb)
{
    return (p_tcb->sr_cmd.op_code == 0);
}
