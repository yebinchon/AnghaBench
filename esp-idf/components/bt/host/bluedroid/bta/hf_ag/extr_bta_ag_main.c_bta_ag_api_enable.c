
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int parse_mode; int (* p_cback ) (int ,int *) ;} ;
struct TYPE_9__ {TYPE_2__ api_enable; } ;
typedef TYPE_3__ tBTA_AG_DATA ;
typedef int tBTA_AG_CB ;
struct TYPE_10__ {int (* p_cback ) (int ,int *) ;TYPE_1__* scb; int msbc_enabled; int parse_mode; } ;
struct TYPE_7__ {int negotiated_codec; } ;


 int AG_VOICE_SETTINGS ;
 int BTA_AG_ENABLE_EVT ;
 int BTA_ID_AG ;
 int BTM_SCO_CODEC_CVSD ;
 int BTM_SCO_CODEC_MSBC ;
 int BTM_WriteVoiceSettings (int ) ;
 int FALSE ;
 int TRUE ;
 TYPE_4__ bta_ag_cb ;
 int bta_ag_collision_cback ;
 int bta_ag_version ;
 int bta_sys_collision_register (int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_ag_api_enable(tBTA_AG_DATA *p_data)
{

    memset(&bta_ag_cb, 0, sizeof(tBTA_AG_CB));

    bta_ag_cb.p_cback = p_data->api_enable.p_cback;
    bta_ag_cb.parse_mode = p_data->api_enable.parse_mode;

    if (strcmp(bta_ag_version, "1.6") == 0) {
        bta_ag_cb.msbc_enabled = TRUE;
        bta_ag_cb.scb->negotiated_codec = BTM_SCO_CODEC_MSBC;
    } else{
        bta_ag_cb.msbc_enabled = FALSE;
        bta_ag_cb.scb->negotiated_codec = BTM_SCO_CODEC_CVSD;
    }


    BTM_WriteVoiceSettings(AG_VOICE_SETTINGS);
    bta_sys_collision_register (BTA_ID_AG, bta_ag_collision_cback);

    (*bta_ag_cb.p_cback)(BTA_AG_ENABLE_EVT, ((void*)0));
}
