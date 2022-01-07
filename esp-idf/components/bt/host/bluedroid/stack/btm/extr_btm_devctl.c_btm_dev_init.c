
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int tBTM_LOC_BD_NAME ;
typedef int tBTM_DEVCB ;
struct TYPE_6__ {void* param; } ;
struct TYPE_8__ {void* param; } ;
struct TYPE_9__ {TYPE_1__ rln_timer; TYPE_3__ reset_timer; } ;
struct TYPE_7__ {TYPE_4__* bd_name; } ;
struct TYPE_10__ {scalar_t__ btm_sco_pkt_types_supported; scalar_t__ btm_acl_pkt_types_supported; TYPE_4__ devcb; TYPE_2__ cfg; } ;
typedef void* TIMER_PARAM_TYPE ;


 scalar_t__ BTM_ACL_PKT_TYPES_MASK_DH1 ;
 scalar_t__ BTM_ACL_PKT_TYPES_MASK_DH3 ;
 scalar_t__ BTM_ACL_PKT_TYPES_MASK_DH5 ;
 scalar_t__ BTM_ACL_PKT_TYPES_MASK_DM1 ;
 scalar_t__ BTM_ACL_PKT_TYPES_MASK_DM3 ;
 scalar_t__ BTM_ACL_PKT_TYPES_MASK_DM5 ;
 scalar_t__ BTM_SCO_PKT_TYPES_MASK_EV3 ;
 scalar_t__ BTM_SCO_PKT_TYPES_MASK_EV4 ;
 scalar_t__ BTM_SCO_PKT_TYPES_MASK_EV5 ;
 scalar_t__ BTM_SCO_PKT_TYPES_MASK_HV1 ;
 scalar_t__ BTM_SCO_PKT_TYPES_MASK_HV2 ;
 scalar_t__ BTM_SCO_PKT_TYPES_MASK_HV3 ;
 scalar_t__ TT_DEV_RESET ;
 scalar_t__ TT_DEV_RLN ;
 TYPE_5__ btm_cb ;
 int memset (TYPE_4__*,int ,int) ;

void btm_dev_init (void)
{
    btm_cb.devcb.reset_timer.param = (TIMER_PARAM_TYPE)TT_DEV_RESET;
    btm_cb.devcb.rln_timer.param = (TIMER_PARAM_TYPE)TT_DEV_RLN;

    btm_cb.btm_acl_pkt_types_supported = BTM_ACL_PKT_TYPES_MASK_DH1 + BTM_ACL_PKT_TYPES_MASK_DM1 +
                                         BTM_ACL_PKT_TYPES_MASK_DH3 + BTM_ACL_PKT_TYPES_MASK_DM3 +
                                         BTM_ACL_PKT_TYPES_MASK_DH5 + BTM_ACL_PKT_TYPES_MASK_DM5;

    btm_cb.btm_sco_pkt_types_supported = BTM_SCO_PKT_TYPES_MASK_HV1 +
                                         BTM_SCO_PKT_TYPES_MASK_HV2 +
                                         BTM_SCO_PKT_TYPES_MASK_HV3 +
                                         BTM_SCO_PKT_TYPES_MASK_EV3 +
                                         BTM_SCO_PKT_TYPES_MASK_EV4 +
                                         BTM_SCO_PKT_TYPES_MASK_EV5;
}
