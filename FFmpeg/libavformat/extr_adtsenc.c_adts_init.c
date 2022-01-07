
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ codec_id; scalar_t__ extradata_size; int extradata; } ;
struct TYPE_8__ {TYPE_1__** streams; int * priv_data; } ;
struct TYPE_7__ {TYPE_3__* codecpar; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;
typedef int ADTSContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_AAC ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int adts_decode_extradata (TYPE_2__*,int *,int ,scalar_t__) ;
 int av_log (TYPE_2__*,int ,char*) ;

__attribute__((used)) static int adts_init(AVFormatContext *s)
{
    ADTSContext *adts = s->priv_data;
    AVCodecParameters *par = s->streams[0]->codecpar;

    if (par->codec_id != AV_CODEC_ID_AAC) {
        av_log(s, AV_LOG_ERROR, "Only AAC streams can be muxed by the ADTS muxer\n");
        return AVERROR(EINVAL);
    }
    if (par->extradata_size > 0)
        return adts_decode_extradata(s, adts, par->extradata,
                                     par->extradata_size);

    return 0;
}
