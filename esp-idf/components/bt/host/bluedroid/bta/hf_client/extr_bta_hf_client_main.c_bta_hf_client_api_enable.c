
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* p_cback ) (int ,int *) ;} ;
struct TYPE_9__ {TYPE_1__ api_enable; } ;
typedef TYPE_3__ tBTA_HF_CLIENT_DATA ;
typedef int tBTA_HF_CLIENT_CB ;
struct TYPE_8__ {int negotiated_codec; } ;
struct TYPE_10__ {int (* p_cback ) (int ,int *) ;TYPE_2__ scb; int msbc_enabled; } ;


 int AG_VOICE_SETTINGS ;
 int BTA_HF_CLIENT_ENABLE_EVT ;
 int BTA_ID_HS ;
 int BTM_SCO_CODEC_CVSD ;
 int BTM_WriteVoiceSettings (int ) ;
 int FALSE ;
 int TRUE ;
 TYPE_4__ bta_hf_client_cb ;
 int bta_hf_client_collision_cback ;
 int bta_hf_client_version ;
 int bta_sys_collision_register (int ,int ) ;
 int memset (TYPE_4__*,int ,int) ;
 scalar_t__ strcmp (int ,char*) ;
 int stub1 (int ,int *) ;

__attribute__((used)) static void bta_hf_client_api_enable(tBTA_HF_CLIENT_DATA *p_data)
{

    memset(&bta_hf_client_cb, 0, sizeof(tBTA_HF_CLIENT_CB));


    bta_hf_client_cb.p_cback = p_data->api_enable.p_cback;


    if (strcmp(bta_hf_client_version, "1.6") == 0) {
        bta_hf_client_cb.msbc_enabled = TRUE;
    } else{
        bta_hf_client_cb.msbc_enabled = FALSE;
    }

    bta_hf_client_cb.scb.negotiated_codec = BTM_SCO_CODEC_CVSD;


    BTM_WriteVoiceSettings(AG_VOICE_SETTINGS);

    bta_sys_collision_register (BTA_ID_HS, bta_hf_client_collision_cback);


    (*bta_hf_client_cb.p_cback)(BTA_HF_CLIENT_ENABLE_EVT, ((void*)0));
}
