
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* internal; } ;
struct TYPE_7__ {int nb_bsfs; int * bsfs; } ;
struct TYPE_6__ {TYPE_2__ filter; } ;
typedef TYPE_2__ DecodeFilterContext ;
typedef int AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int av_bsf_receive_packet (int ,int *) ;
 int av_bsf_send_packet (int ,int *) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static int bsfs_poll(AVCodecContext *avctx, AVPacket *pkt)
{
    DecodeFilterContext *s = &avctx->internal->filter;
    int idx, ret;


    idx = s->nb_bsfs - 1;
    while (idx >= 0) {

        ret = av_bsf_receive_packet(s->bsfs[idx], pkt);
        if (ret == AVERROR(EAGAIN)) {

            idx--;
            continue;
        } else if (ret < 0 && ret != AVERROR_EOF) {
            return ret;
        }



        if (idx == s->nb_bsfs - 1) {
            return ret;
        } else {
            idx++;
            ret = av_bsf_send_packet(s->bsfs[idx], ret < 0 ? ((void*)0) : pkt);
            if (ret < 0) {
                av_log(avctx, AV_LOG_ERROR,
                       "Error pre-processing a packet before decoding\n");
                av_packet_unref(pkt);
                return ret;
            }
        }
    }

    return AVERROR(EAGAIN);
}
