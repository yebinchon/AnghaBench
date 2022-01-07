
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ codec_id; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int state; } ;
typedef TYPE_1__ LibGSMDecodeContext ;
typedef TYPE_2__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_GSM_MS ;
 int GSM_OPT_WAV49 ;
 int gsm_create () ;
 int gsm_destroy (int ) ;
 int gsm_option (int ,int ,int*) ;

__attribute__((used)) static void libgsm_flush(AVCodecContext *avctx) {
    LibGSMDecodeContext *s = avctx->priv_data;
    int one = 1;

    gsm_destroy(s->state);
    s->state = gsm_create();
    if (avctx->codec_id == AV_CODEC_ID_GSM_MS)
        gsm_option(s->state, GSM_OPT_WAV49, &one);
}
