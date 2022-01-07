
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int bytes; int packet; } ;
typedef TYPE_2__ ogg_packet ;
typedef int int16_t ;
struct TYPE_17__ {TYPE_3__* priv_data; } ;
struct TYPE_16__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_15__ {int size; int data; } ;
struct TYPE_12__ {int channels; } ;
struct TYPE_14__ {int vd; TYPE_1__ vi; int vb; TYPE_2__ op; } ;
typedef TYPE_3__ OggVorbisDecContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 int conv (int,float**,char*,int) ;
 int ff_get_buffer (TYPE_6__*,TYPE_5__*,int ) ;
 scalar_t__ vorbis_synthesis (int *,TYPE_2__*) ;
 int vorbis_synthesis_blockin (int *,int *) ;
 int vorbis_synthesis_pcmout (int *,float***) ;
 int vorbis_synthesis_read (int *,int) ;

__attribute__((used)) static int oggvorbis_decode_frame(AVCodecContext *avccontext, void *data,
                        int *got_frame_ptr, AVPacket *avpkt)
{
    OggVorbisDecContext *context = avccontext->priv_data ;
    AVFrame *frame = data;
    float **pcm ;
    ogg_packet *op= &context->op;
    int samples, total_samples, total_bytes;
    int ret;
    int16_t *output;

    if(!avpkt->size){

        return 0;
    }

    frame->nb_samples = 8192*4;
    if ((ret = ff_get_buffer(avccontext, frame, 0)) < 0)
        return ret;
    output = (int16_t *)frame->data[0];


    op->packet = avpkt->data;
    op->bytes = avpkt->size;







    if(vorbis_synthesis(&context->vb, op) == 0)
        vorbis_synthesis_blockin(&context->vd, &context->vb) ;

    total_samples = 0 ;
    total_bytes = 0 ;

    while((samples = vorbis_synthesis_pcmout(&context->vd, &pcm)) > 0) {
        conv(samples, pcm, (char*)output + total_bytes, context->vi.channels) ;
        total_bytes += samples * 2 * context->vi.channels ;
        total_samples += samples ;
        vorbis_synthesis_read(&context->vd, samples) ;
    }

    frame->nb_samples = total_samples;
    *got_frame_ptr = total_samples > 0;
    return avpkt->size;
}
