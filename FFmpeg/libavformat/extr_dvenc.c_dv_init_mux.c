
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_9__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int den; int num; } ;
struct TYPE_15__ {int n_difchan; TYPE_1__ time_base; } ;
struct TYPE_14__ {int nb_streams; TYPE_4__** streams; TYPE_3__* priv_data; } ;
struct TYPE_13__ {TYPE_2__* codecpar; int time_base; } ;
struct TYPE_12__ {int n_ast; int * audio_data; TYPE_4__** ast; int start_time; scalar_t__ has_video; scalar_t__ has_audio; scalar_t__ frames; TYPE_9__* sys; } ;
struct TYPE_11__ {int codec_type; scalar_t__ codec_id; int channels; int sample_rate; int format; int height; int width; } ;
typedef TYPE_3__ DVMuxContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVFormatContext ;




 scalar_t__ AV_CODEC_ID_DVVIDEO ;
 scalar_t__ AV_CODEC_ID_PCM_S16LE ;
 int MAX_AUDIO_FRAME_SIZE ;
 TYPE_9__* av_dv_codec_profile2 (int ,int ,int ,int ) ;
 int av_fifo_alloc_array (int,int ) ;
 int av_fifo_freep (int *) ;
 int ff_parse_creation_time_metadata (TYPE_5__*,int *,int) ;

__attribute__((used)) static DVMuxContext* dv_init_mux(AVFormatContext* s)
{
    DVMuxContext *c = s->priv_data;
    AVStream *vst = ((void*)0);
    int i;


    if (s->nb_streams > 3)
        return ((void*)0);

    c->n_ast = 0;
    c->ast[0] = c->ast[1] = ((void*)0);


    for (i=0; i<s->nb_streams; i++) {
        switch (s->streams[i]->codecpar->codec_type) {
        case 128:
            if (vst) return ((void*)0);
            vst = s->streams[i];
            break;
        case 129:
            if (c->n_ast > 1) return ((void*)0);
            c->ast[c->n_ast++] = s->streams[i];
            break;
        default:
            goto bail_out;
        }
    }


    if (!vst || vst->codecpar->codec_id != AV_CODEC_ID_DVVIDEO)
        goto bail_out;
    for (i=0; i<c->n_ast; i++) {
        if (c->ast[i]) {
            if(c->ast[i]->codecpar->codec_id != AV_CODEC_ID_PCM_S16LE ||
               c->ast[i]->codecpar->channels != 2)
                goto bail_out;
            if (c->ast[i]->codecpar->sample_rate != 48000 &&
                c->ast[i]->codecpar->sample_rate != 44100 &&
                c->ast[i]->codecpar->sample_rate != 32000 )
                goto bail_out;
        }
    }
    c->sys = av_dv_codec_profile2(vst->codecpar->width, vst->codecpar->height,
                                  vst->codecpar->format, vst->time_base);
    if (!c->sys)
        goto bail_out;

    if ((c->sys->time_base.den != 25 && c->sys->time_base.den != 50) || c->sys->time_base.num != 1) {
        if (c->ast[0] && c->ast[0]->codecpar->sample_rate != 48000)
            goto bail_out;
        if (c->ast[1] && c->ast[1]->codecpar->sample_rate != 48000)
            goto bail_out;
    }

    if ((c->n_ast > 1) && (c->sys->n_difchan < 2)) {

        goto bail_out;
    }


    c->frames = 0;
    c->has_audio = 0;
    c->has_video = 0;
    ff_parse_creation_time_metadata(s, &c->start_time, 1);

    for (i=0; i < c->n_ast; i++) {
        if (c->ast[i] && !(c->audio_data[i]=av_fifo_alloc_array(100, MAX_AUDIO_FRAME_SIZE))) {
            while (i > 0) {
                i--;
                av_fifo_freep(&c->audio_data[i]);
            }
            goto bail_out;
        }
    }

    return c;

bail_out:
    return ((void*)0);
}
