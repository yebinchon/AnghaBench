
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ start_time; TYPE_1__* codecpar; } ;
struct TYPE_8__ {int rate; } ;
struct TYPE_7__ {int channels; int bits_per_coded_sample; int sample_rate; int channel_layout; int codec_id; int codec_type; } ;
typedef TYPE_2__ SIFFContext ;
typedef TYPE_3__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_PCM_U8 ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int ) ;

__attribute__((used)) static int create_audio_stream(AVFormatContext *s, SIFFContext *c)
{
    AVStream *ast;
    ast = avformat_new_stream(s, ((void*)0));
    if (!ast)
        return AVERROR(ENOMEM);
    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
    ast->codecpar->channels = 1;
    ast->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    ast->codecpar->bits_per_coded_sample = 8;
    ast->codecpar->sample_rate = c->rate;
    avpriv_set_pts_info(ast, 16, 1, c->rate);
    ast->start_time = 0;
    return 0;
}
