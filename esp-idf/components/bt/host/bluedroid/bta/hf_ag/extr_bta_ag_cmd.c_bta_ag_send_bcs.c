
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sco_codec; scalar_t__ codec_fallback; } ;
typedef TYPE_1__ tBTA_AG_SCB ;
typedef int tBTA_AG_DATA ;
typedef int UINT16 ;


 int APPL_TRACE_DEBUG (char*,int ) ;
 int APPL_TRACE_ERROR (char*,int) ;



 int BTA_AG_RES_BCS ;
 int UUID_CODEC_CVSD ;
 int UUID_CODEC_MSBC ;
 int bta_ag_send_result (TYPE_1__*,int ,int *,int ) ;

void bta_ag_send_bcs(tBTA_AG_SCB *p_scb, tBTA_AG_DATA *p_data)
{
    UINT16 codec_uuid;

    if (p_scb->codec_fallback) {
        codec_uuid = UUID_CODEC_CVSD;
    } else {
        switch(p_scb->sco_codec) {
            case 128:
                codec_uuid = UUID_CODEC_CVSD;
                break;

            case 130:
                codec_uuid = UUID_CODEC_CVSD;
                break;

            case 129:
                codec_uuid = UUID_CODEC_MSBC;
                break;

            default:
                APPL_TRACE_ERROR("bta_ag_send_bcs: unknown codec %d, use CVSD", p_scb->sco_codec);
                codec_uuid = UUID_CODEC_CVSD;
                break;
        }
    }

    APPL_TRACE_DEBUG("send +BCS codec is %d", codec_uuid);
    bta_ag_send_result(p_scb, BTA_AG_RES_BCS, ((void*)0), codec_uuid);
}
