
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int id; TYPE_1__* codecpar; int need_parsing; } ;
struct TYPE_6__ {int channels; scalar_t__ codec_id; int sample_rate; int codec_type; int channel_layout; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVMEDIA_TYPE_AUDIO ;
 int AVSTREAM_PARSE_FULL ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 scalar_t__ AV_CODEC_ID_PCM_S16LE ;
 scalar_t__ AV_CODEC_ID_PCM_U8 ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 scalar_t__ ff_codec_get_id (int ,int) ;
 int swf_audio_codec_tags ;

__attribute__((used)) static AVStream *create_new_audio_stream(AVFormatContext *s, int id, int info)
{
    int sample_rate_code, sample_size_code;
    AVStream *ast = avformat_new_stream(s, ((void*)0));
    if (!ast)
        return ((void*)0);
    ast->id = id;
    if (info & 1) {
        ast->codecpar->channels = 2;
        ast->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    } else {
        ast->codecpar->channels = 1;
        ast->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    }
    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    ast->codecpar->codec_id = ff_codec_get_id(swf_audio_codec_tags, info>>4 & 15);
    ast->need_parsing = AVSTREAM_PARSE_FULL;
    sample_rate_code = info>>2 & 3;
    sample_size_code = info>>1 & 1;
    if (!sample_size_code && ast->codecpar->codec_id == AV_CODEC_ID_PCM_S16LE)
        ast->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
    ast->codecpar->sample_rate = 44100 >> (3 - sample_rate_code);
    avpriv_set_pts_info(ast, 64, 1, ast->codecpar->sample_rate);
    return ast;
}
