
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct sbc_frame {scalar_t__ mode; int subbands; int channels; int blocks; int bitpool; int codesize; int scale_factor; int sb_sample_f; } ;
struct TYPE_11__ {int (* sbc_calc_scalefactors_j ) (int ,int ,int,int) ;int (* sbc_calc_scalefactors ) (int ,int ,int,int,int) ;int X; int position; int (* sbc_enc_process_input_4s ) (int ,int ,int ,int,int) ;int (* sbc_enc_process_input_8s ) (int ,int ,int ,int,int) ;} ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int nb_samples; int * data; } ;
struct TYPE_8__ {int msbc; TYPE_6__ dsp; struct sbc_frame frame; } ;
typedef TYPE_1__ SBCEncContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVCodecContext ;


 scalar_t__ JOINT_STEREO ;
 scalar_t__ SBC_MODE_DUAL_CHANNEL ;
 scalar_t__ SBC_MODE_JOINT_STEREO ;
 int emms_c () ;
 int ff_alloc_packet2 (TYPE_3__*,int *,int,int ) ;
 int sbc_analyze_audio (TYPE_6__*,struct sbc_frame*) ;
 int sbc_pack_frame (int *,struct sbc_frame*,int,int ) ;
 int stub1 (int ,int ,int ,int,int) ;
 int stub2 (int ,int ,int ,int,int) ;
 int stub3 (int ,int ,int,int) ;
 int stub4 (int ,int ,int,int,int) ;

__attribute__((used)) static int sbc_encode_frame(AVCodecContext *avctx, AVPacket *avpkt,
                            const AVFrame *av_frame, int *got_packet_ptr)
{
    SBCEncContext *sbc = avctx->priv_data;
    struct sbc_frame *frame = &sbc->frame;
    uint8_t joint = frame->mode == SBC_MODE_JOINT_STEREO;
    uint8_t dual = frame->mode == SBC_MODE_DUAL_CHANNEL;
    int ret, j = 0;

    int frame_length = 4 + (4 * frame->subbands * frame->channels) / 8
                     + ((frame->blocks * frame->bitpool * (1 + dual)
                     + joint * frame->subbands) + 7) / 8;


    if (av_frame->nb_samples * frame->channels * 2 < frame->codesize)
        return 0;

    if ((ret = ff_alloc_packet2(avctx, avpkt, frame_length, 0)) < 0)
        return ret;


    if (frame->subbands == 8)
        sbc->dsp.position = sbc->dsp.sbc_enc_process_input_8s(
                sbc->dsp.position, av_frame->data[0], sbc->dsp.X,
                frame->subbands * frame->blocks, frame->channels);
    else
        sbc->dsp.position = sbc->dsp.sbc_enc_process_input_4s(
                sbc->dsp.position, av_frame->data[0], sbc->dsp.X,
                frame->subbands * frame->blocks, frame->channels);

    sbc_analyze_audio(&sbc->dsp, &sbc->frame);

    if (frame->mode == JOINT_STEREO)
        j = sbc->dsp.sbc_calc_scalefactors_j(frame->sb_sample_f,
                                             frame->scale_factor,
                                             frame->blocks,
                                             frame->subbands);
    else
        sbc->dsp.sbc_calc_scalefactors(frame->sb_sample_f,
                                       frame->scale_factor,
                                       frame->blocks,
                                       frame->channels,
                                       frame->subbands);
    emms_c();
    sbc_pack_frame(avpkt, frame, j, sbc->msbc);

    *got_packet_ptr = 1;
    return 0;
}
