
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int sample_step; int device; } ;
typedef TYPE_1__ al_data ;
struct TYPE_11__ {int flags; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int size; scalar_t__ data; int pts; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef int ALCsizei ;
typedef int ALCint ;


 int ALC_CAPTURE_SAMPLES ;
 int AVERROR (int ) ;
 int AVFMT_FLAG_NONBLOCK ;
 int AV_LOG_ERROR ;
 int EAGAIN ;
 int al_get_error (int ,char const**) ;
 int alcCaptureSamples (int ,scalar_t__,int) ;
 int alcGetIntegerv (int ,int ,int ,int*) ;
 int av_gettime () ;
 int av_log (TYPE_3__*,int ,char*,char const*) ;
 int av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_usleep (int) ;

__attribute__((used)) static int read_packet(AVFormatContext* ctx, AVPacket *pkt)
{
    al_data *ad = ctx->priv_data;
    int error=0;
    const char *error_msg;
    ALCint nb_samples;

    for (;;) {

        alcGetIntegerv(ad->device, ALC_CAPTURE_SAMPLES, (ALCsizei) sizeof(ALCint), &nb_samples);
        if (error = al_get_error(ad->device, &error_msg)) goto fail;
        if (nb_samples > 0)
            break;
        if (ctx->flags & AVFMT_FLAG_NONBLOCK)
            return AVERROR(EAGAIN);
        av_usleep(1000);
    }


    if ((error = av_new_packet(pkt, nb_samples*ad->sample_step)) < 0)
        goto fail;
    pkt->pts = av_gettime();


    alcCaptureSamples(ad->device, pkt->data, nb_samples);
    if (error = al_get_error(ad->device, &error_msg)) goto fail;

    return pkt->size;
fail:

    if (pkt->data)
        av_packet_unref(pkt);
    if (error_msg)
        av_log(ctx, AV_LOG_ERROR, "Error: %s\n", error_msg);
    return error;
}
