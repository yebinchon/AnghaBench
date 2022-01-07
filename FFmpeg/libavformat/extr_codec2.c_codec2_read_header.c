
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_15__ {int extradata; } ;
struct TYPE_14__ {TYPE_1__* internal; int pb; } ;
struct TYPE_13__ {TYPE_4__* codecpar; } ;
struct TYPE_12__ {int data_offset; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AVPRIV_CODEC2_EXTRADATA_SIZE ;
 int AVPRIV_CODEC2_HEADER_SIZE ;
 scalar_t__ AVPRIV_CODEC2_MAGIC ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int EXPECTED_CODEC2_MAJOR_VERSION ;
 int av_log (TYPE_3__*,int ,char*) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 scalar_t__ avio_rb24 (int ) ;
 int avpriv_codec2_version_from_extradata (int ) ;
 int avpriv_report_missing_feature (TYPE_3__*,char*,int) ;
 int codec2_read_header_common (TYPE_3__*,TYPE_2__*) ;
 int ff_alloc_extradata (TYPE_4__*,int ) ;
 int ffio_read_size (int ,int ,int ) ;

__attribute__((used)) static int codec2_read_header(AVFormatContext *s)
{
    AVStream *st = avformat_new_stream(s, ((void*)0));
    int ret, version;

    if (!st) {
        return AVERROR(ENOMEM);
    }

    if (avio_rb24(s->pb) != AVPRIV_CODEC2_MAGIC) {
        av_log(s, AV_LOG_ERROR, "not a .c2 file\n");
        return AVERROR_INVALIDDATA;
    }

    ret = ff_alloc_extradata(st->codecpar, AVPRIV_CODEC2_EXTRADATA_SIZE);
    if (ret) {
        return ret;
    }

    ret = ffio_read_size(s->pb, st->codecpar->extradata, AVPRIV_CODEC2_EXTRADATA_SIZE);
    if (ret < 0) {
        return ret;
    }

    version = avpriv_codec2_version_from_extradata(st->codecpar->extradata);
    if ((version >> 8) != EXPECTED_CODEC2_MAJOR_VERSION) {
        avpriv_report_missing_feature(s, "Major version %i", version >> 8);
        return AVERROR_PATCHWELCOME;
    }

    s->internal->data_offset = AVPRIV_CODEC2_HEADER_SIZE;

    return codec2_read_header_common(s, st);
}
