
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_13__ {int codec_tag; int channels; unsigned int sample_rate; scalar_t__ codec_id; } ;
struct TYPE_12__ {TYPE_2__* pb; TYPE_1__** streams; } ;
struct TYPE_11__ {int seekable; } ;
struct TYPE_10__ {TYPE_4__* codecpar; } ;
typedef TYPE_2__ AVIOContext ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVIO_SEEKABLE_NORMAL ;
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_3__*,int ,char*) ;
 int avio_flush (TYPE_2__*) ;
 int avio_wb16 (TYPE_2__*,int) ;
 int avpriv_report_missing_feature (TYPE_3__*,char*) ;

__attribute__((used)) static int rso_write_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;

    if (!par->codec_tag)
        return AVERROR_INVALIDDATA;

    if (par->channels != 1) {
        av_log(s, AV_LOG_ERROR, "RSO only supports mono\n");
        return AVERROR_INVALIDDATA;
    }

    if (!(s->pb->seekable & AVIO_SEEKABLE_NORMAL)) {
        av_log(s, AV_LOG_ERROR, "muxer does not support non seekable output\n");
        return AVERROR_INVALIDDATA;
    }


    if (par->sample_rate >= 1u<<16) {
        av_log(s, AV_LOG_ERROR, "Sample rate must be < 65536\n");
        return AVERROR_INVALIDDATA;
    }

    if (par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        avpriv_report_missing_feature(s, "ADPCM in RSO");
        return AVERROR_PATCHWELCOME;
    }


    avio_wb16(pb, par->codec_tag);
    avio_wb16(pb, 0);
    avio_wb16(pb, par->sample_rate);
    avio_wb16(pb, 0x0000);

    avio_flush(pb);

    return 0;
}
