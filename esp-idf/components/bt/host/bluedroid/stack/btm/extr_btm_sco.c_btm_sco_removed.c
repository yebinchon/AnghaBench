
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * p_esco_cback; } ;
struct TYPE_7__ {scalar_t__ state; scalar_t__ hci_handle; scalar_t__ sent_not_acked; int (* p_disc_cb ) (scalar_t__) ;TYPE_2__ esco; int rem_bd_known; } ;
typedef TYPE_3__ tSCO_CONN ;
typedef int UINT8 ;
typedef scalar_t__ UINT16 ;
struct TYPE_5__ {scalar_t__ xmit_window_size; scalar_t__ num_lm_sco_bufs; TYPE_3__* sco_db; int sco_disc_reason; } ;
struct TYPE_8__ {TYPE_1__ sco_cb; } ;


 scalar_t__ BTM_INVALID_HCI_HANDLE ;
 scalar_t__ BTM_MAX_SCO_LINKS ;
 int FALSE ;
 scalar_t__ SCO_ST_LISTENING ;
 scalar_t__ SCO_ST_UNUSED ;
 TYPE_4__ btm_cb ;
 int btm_sco_flush_sco_data (scalar_t__) ;
 int stub1 (scalar_t__) ;

void btm_sco_removed (UINT16 hci_handle, UINT8 reason)
{





    btm_cb.sco_cb.sco_disc_reason = reason;
}
