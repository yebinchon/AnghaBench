
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_12__ {int frame_size; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int has_video; int n_ast; int has_audio; TYPE_6__* sys; int frames; int * audio_data; TYPE_3__** ast; int * frame_buf; } ;
struct TYPE_9__ {int codec_type; int sample_rate; } ;
typedef TYPE_2__ DVMuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;


 int AV_LOG_ERROR ;
 int ENOSYS ;
 int MAX_AUDIO_FRAME_SIZE ;
 int av_fifo_drain (int ,int) ;
 int av_fifo_generic_write (int ,int *,int,int *) ;
 int av_fifo_size (int ) ;
 int av_log (int *,int ,char*,int,...) ;
 int dv_audio_frame_size (TYPE_6__*,int ,int ) ;
 int dv_inject_audio (TYPE_2__*,int,int *) ;
 int dv_inject_metadata (TYPE_2__*,int *) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int dv_assemble_frame(AVFormatContext *s,
                             DVMuxContext *c, AVStream* st,
                             uint8_t* data, int data_size, uint8_t** frame)
{
    int i, reqasize;

    *frame = &c->frame_buf[0];

    switch (st->codecpar->codec_type) {
    case 128:

        if (c->has_video)
            av_log(s, AV_LOG_ERROR, "Can't process DV frame #%d. Insufficient audio data or severe sync problem.\n", c->frames);
        if (data_size != c->sys->frame_size) {
            av_log(s, AV_LOG_ERROR, "Unexpected frame size, %d != %d\n",
                   data_size, c->sys->frame_size);
            return AVERROR(ENOSYS);
        }

        memcpy(*frame, data, c->sys->frame_size);
        c->has_video = 1;
        break;
    case 129:
        for (i = 0; i < c->n_ast && st != c->ast[i]; i++);


        if (av_fifo_size(c->audio_data[i]) + data_size >= 100*MAX_AUDIO_FRAME_SIZE)
            av_log(s, AV_LOG_ERROR, "Can't process DV frame #%d. Insufficient video data or severe sync problem.\n", c->frames);
        av_fifo_generic_write(c->audio_data[i], data, data_size, ((void*)0));

        reqasize = 4 * dv_audio_frame_size(c->sys, c->frames, st->codecpar->sample_rate);


        c->has_audio |= ((reqasize <= av_fifo_size(c->audio_data[i])) << i);

        break;
    default:
        break;
    }


    if (c->has_video == 1 && c->has_audio + 1 == 1 << c->n_ast) {
        dv_inject_metadata(c, *frame);
        c->has_audio = 0;
        for (i=0; i < c->n_ast; i++) {
            dv_inject_audio(c, i, *frame);
            reqasize = 4 * dv_audio_frame_size(c->sys, c->frames, c->ast[i]->codecpar->sample_rate);
            av_fifo_drain(c->audio_data[i], reqasize);
            c->has_audio |= ((reqasize <= av_fifo_size(c->audio_data[i])) << i);
        }

        c->has_video = 0;

        c->frames++;

        return c->sys->frame_size;
    }

    return 0;
}
