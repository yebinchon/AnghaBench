
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int nb_streams; int pb; TYPE_2__** streams; } ;
struct TYPE_7__ {TYPE_1__* codecpar; } ;
struct TYPE_6__ {scalar_t__ codec_id; scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AVPRIV_CODEC2_EXTRADATA_SIZE ;
 int AVPRIV_CODEC2_MAGIC ;
 scalar_t__ AV_CODEC_ID_CODEC2 ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int avio_wb24 (int ,int ) ;
 int avio_write (int ,int ,scalar_t__) ;

__attribute__((used)) static int codec2_write_header(AVFormatContext *s)
{
    AVStream *st;

    if (s->nb_streams != 1 || s->streams[0]->codecpar->codec_id != AV_CODEC_ID_CODEC2) {
        av_log(s, AV_LOG_ERROR, ".c2 files must have exactly one codec2 stream\n");
        return AVERROR(EINVAL);
    }

    st = s->streams[0];

    if (st->codecpar->extradata_size != AVPRIV_CODEC2_EXTRADATA_SIZE) {
        av_log(s, AV_LOG_ERROR, ".c2 files require exactly %i bytes of extradata (got %i)\n",
               AVPRIV_CODEC2_EXTRADATA_SIZE, st->codecpar->extradata_size);
        return AVERROR(EINVAL);
    }

    avio_wb24(s->pb, AVPRIV_CODEC2_MAGIC);
    avio_write(s->pb, st->codecpar->extradata, AVPRIV_CODEC2_EXTRADATA_SIZE);

    return 0;
}
