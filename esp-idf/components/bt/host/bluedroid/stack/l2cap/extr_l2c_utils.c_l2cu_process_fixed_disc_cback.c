
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int* peer_chnl_mask; scalar_t__ transport; int disc_reason; int remote_bd_addr; int ** p_fixed_ccbs; int * p_pending_ccb; } ;
typedef TYPE_2__ tL2C_LCB ;
typedef int tL2C_CCB ;
typedef int UINT8 ;
struct TYPE_7__ {TYPE_1__* fixed_reg; } ;
struct TYPE_5__ {int (* pL2CA_FixedConn_Cb ) (int,int ,int ,int ,scalar_t__) ;} ;


 scalar_t__ BT_TRANSPORT_BR_EDR ;
 scalar_t__ BT_TRANSPORT_LE ;
 int FALSE ;
 int L2CAP_FIRST_FIXED_CHNL ;
 int L2CAP_NUM_FIXED_CHNLS ;
 TYPE_4__ l2cb ;
 int l2cu_release_ccb (int *) ;
 int stub1 (int,int ,int ,int ,scalar_t__) ;
 int stub2 (int,int ,int ,int ,scalar_t__) ;
 int stub3 (int,int ,int ,int ,scalar_t__) ;
 int stub4 (int,int ,int ,int ,scalar_t__) ;

void l2cu_process_fixed_disc_cback (tL2C_LCB *p_lcb)
{
}
