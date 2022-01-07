
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NumPayload; int * Payload; } ;
typedef TYPE_1__ mfxEncodeCtrl ;


 int QSV_MAX_ENC_PAYLOAD ;
 int av_free (int ) ;

__attribute__((used)) static void free_encoder_ctrl_payloads(mfxEncodeCtrl* enc_ctrl)
{
    if (enc_ctrl) {
        int i;
        for (i = 0; i < enc_ctrl->NumPayload && i < QSV_MAX_ENC_PAYLOAD; i++) {
            av_free(enc_ctrl->Payload[i]);
        }
        enc_ctrl->NumPayload = 0;
    }
}
