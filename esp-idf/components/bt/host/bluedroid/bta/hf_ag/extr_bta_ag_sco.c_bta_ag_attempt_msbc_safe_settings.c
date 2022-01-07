
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ sco_codec; scalar_t__ codec_msbc_settings; scalar_t__ svc_conn; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int BOOLEAN ;


 scalar_t__ BTA_AG_SCO_MSBC_SETTINGS_T1 ;
 scalar_t__ BTM_SCO_CODEC_MSBC ;
 int FALSE ;
 int TRUE ;

BOOLEAN bta_ag_attempt_msbc_safe_settings(tBTA_AG_SCB *p_scb)
{
    if (p_scb->svc_conn && p_scb->sco_codec == BTM_SCO_CODEC_MSBC &&
        p_scb->codec_msbc_settings == BTA_AG_SCO_MSBC_SETTINGS_T1)
        return TRUE;
    else
        return FALSE;
}
