
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int xmit_data_q; } ;
typedef TYPE_2__ tSCO_CONN ;
typedef size_t UINT16 ;
struct TYPE_4__ {TYPE_2__* sco_db; } ;
struct TYPE_6__ {TYPE_1__ sco_cb; } ;
typedef int BT_HDR ;


 size_t BTM_MAX_SCO_LINKS ;
 int UNUSED (size_t) ;
 TYPE_3__ btm_cb ;
 scalar_t__ fixed_queue_dequeue (int ,int ) ;
 int osi_free (int *) ;

void btm_sco_flush_sco_data(UINT16 sco_inx)
{
    UNUSED(sco_inx);




}
