
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int mode; } ;
struct TYPE_13__ {scalar_t__ result; TYPE_1__ fcr; } ;
typedef TYPE_4__ tL2CAP_CFG_INFO ;
struct TYPE_11__ {int mode; } ;
struct TYPE_12__ {TYPE_2__ fcr; scalar_t__ fcr_present; } ;
struct TYPE_14__ {int gap_handle; int (* p_callback ) (int ,int ) ;TYPE_3__ cfg; int con_flags; } ;
typedef TYPE_5__ tGAP_CCB ;
typedef int UINT16 ;


 int GAP_CCB_FLAGS_MY_CFG_DONE ;
 int GAP_EVT_CONN_CLOSED ;
 scalar_t__ L2CAP_CFG_OK ;
 int L2CAP_FCR_BASIC_MODE ;
 int gap_checks_con_flags (TYPE_5__*) ;
 TYPE_5__* gap_find_ccb_by_cid (int ) ;
 int gap_release_ccb (TYPE_5__*) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void gap_config_cfm (UINT16 l2cap_cid, tL2CAP_CFG_INFO *p_cfg)
{
    tGAP_CCB *p_ccb;


    if ((p_ccb = gap_find_ccb_by_cid (l2cap_cid)) == ((void*)0)) {
        return;
    }

    if (p_cfg->result == L2CAP_CFG_OK) {
        p_ccb->con_flags |= GAP_CCB_FLAGS_MY_CFG_DONE;


        if (p_ccb->cfg.fcr_present) {
            p_ccb->cfg.fcr.mode = p_cfg->fcr.mode;
        } else {
            p_ccb->cfg.fcr.mode = L2CAP_FCR_BASIC_MODE;
        }

        gap_checks_con_flags (p_ccb);
    } else {
        p_ccb->p_callback (p_ccb->gap_handle, GAP_EVT_CONN_CLOSED);
        gap_release_ccb (p_ccb);
    }
}
