
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tSMP_INT_DATA ;
struct TYPE_4__ {scalar_t__ total_tx_unacked; } ;
typedef TYPE_1__ tSMP_CB ;


 int smp_proc_pairing_cmpl (TYPE_1__*) ;

void smp_pairing_cmpl(tSMP_CB *p_cb, tSMP_INT_DATA *p_data)
{
    if (p_cb->total_tx_unacked == 0) {

        smp_proc_pairing_cmpl(p_cb);
    }
}
