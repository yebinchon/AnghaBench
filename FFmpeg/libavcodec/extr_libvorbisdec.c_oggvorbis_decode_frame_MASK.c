#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int bytes; int /*<<< orphan*/  packet; } ;
typedef  TYPE_2__ ogg_packet ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_17__ {TYPE_3__* priv_data; } ;
struct TYPE_16__ {int nb_samples; scalar_t__* data; } ;
struct TYPE_15__ {int size; int /*<<< orphan*/  data; } ;
struct TYPE_12__ {int channels; } ;
struct TYPE_14__ {int /*<<< orphan*/  vd; TYPE_1__ vi; int /*<<< orphan*/  vb; TYPE_2__ op; } ;
typedef  TYPE_3__ OggVorbisDecContext ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFrame ;
typedef  TYPE_6__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,float**,char*,int) ; 
 int FUNC1 (TYPE_6__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,float***) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avccontext, void *data,
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
    //FIXME flush
        return 0;
    }

    frame->nb_samples = 8192*4;
    if ((ret = FUNC1(avccontext, frame, 0)) < 0)
        return ret;
    output = (int16_t *)frame->data[0];


    op->packet = avpkt->data;
    op->bytes  = avpkt->size;

//    av_log(avccontext, AV_LOG_DEBUG, "%d %d %d %"PRId64" %"PRId64" %d %d\n", op->bytes, op->b_o_s, op->e_o_s, op->granulepos, op->packetno, buf_size, context->vi.rate);

/*    for(i=0; i<op->bytes; i++)
      av_log(avccontext, AV_LOG_DEBUG, "%02X ", op->packet[i]);
    av_log(avccontext, AV_LOG_DEBUG, "\n");*/

    if(FUNC2(&context->vb, op) == 0)
        FUNC3(&context->vd, &context->vb) ;

    total_samples = 0 ;
    total_bytes = 0 ;

    while((samples = FUNC4(&context->vd, &pcm)) > 0) {
        FUNC0(samples, pcm, (char*)output + total_bytes, context->vi.channels) ;
        total_bytes += samples * 2 * context->vi.channels ;
        total_samples += samples ;
        FUNC5(&context->vd, samples) ;
    }

    frame->nb_samples = total_samples;
    *got_frame_ptr   = total_samples > 0;
    return avpkt->size;
}