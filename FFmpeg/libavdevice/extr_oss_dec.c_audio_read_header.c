
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int url; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int channels; int sample_rate; int codec_id; } ;
struct TYPE_10__ {int channels; int sample_rate; int codec_id; int codec_type; } ;
typedef TYPE_2__ OSSAudioData ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int EIO ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_4__*,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int ff_oss_audio_open (TYPE_4__*,int ,int ) ;

__attribute__((used)) static int audio_read_header(AVFormatContext *s1)
{
    OSSAudioData *s = s1->priv_data;
    AVStream *st;
    int ret;

    st = avformat_new_stream(s1, ((void*)0));
    if (!st) {
        return AVERROR(ENOMEM);
    }

    ret = ff_oss_audio_open(s1, 0, s1->url);
    if (ret < 0) {
        return AVERROR(EIO);
    }


    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = s->codec_id;
    st->codecpar->sample_rate = s->sample_rate;
    st->codecpar->channels = s->channels;

    avpriv_set_pts_info(st, 64, 1, 1000000);
    return 0;
}
