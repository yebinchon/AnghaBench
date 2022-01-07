
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {TYPE_1__* codecpar; } ;
struct TYPE_12__ {int nports; int sample_rate; } ;
struct TYPE_11__ {int channels; int sample_rate; int codec_id; int codec_type; } ;
typedef TYPE_2__ JackData ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_PCM_F32BE ;
 int AV_CODEC_ID_PCM_F32LE ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int start_jack (TYPE_4__*) ;
 int stop_jack (TYPE_2__*) ;

__attribute__((used)) static int audio_read_header(AVFormatContext *context)
{
    JackData *self = context->priv_data;
    AVStream *stream;
    int test;

    if ((test = start_jack(context)))
        return test;

    stream = avformat_new_stream(context, ((void*)0));
    if (!stream) {
        stop_jack(self);
        return AVERROR(ENOMEM);
    }

    stream->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;



    stream->codecpar->codec_id = AV_CODEC_ID_PCM_F32LE;

    stream->codecpar->sample_rate = self->sample_rate;
    stream->codecpar->channels = self->nports;

    avpriv_set_pts_info(stream, 64, 1, 1000000);
    return 0;
}
