
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8_t ;
typedef int int64_t ;
struct TYPE_12__ {scalar_t__ codec_id; char* extradata; int channels; } ;
struct TYPE_11__ {TYPE_1__** streams; int * pb; } ;
struct TYPE_10__ {TYPE_6__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;


 int ALAC_HEADER ;
 int ALAC_NEW_KUKI ;
 int ALAC_PREAMBLE ;
 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 scalar_t__ AV_CODEC_ID_AAC ;
 scalar_t__ AV_CODEC_ID_ALAC ;
 scalar_t__ AV_CODEC_ID_OPUS ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int AV_LOG_ERROR ;
 int AV_WB32 (char*,int) ;
 int ENOMEM ;
 int INT_MAX ;
 int av_freep (char**) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avio_read (int *,char*,int) ;
 int avio_skip (int *,int) ;
 int avio_tell (int *) ;
 int avpriv_request_sample (TYPE_2__*,char*) ;
 scalar_t__ ff_alloc_extradata (TYPE_6__*,int) ;
 scalar_t__ ff_get_extradata (TYPE_2__*,TYPE_6__*,int *,int) ;
 int ff_mov_read_esds (TYPE_2__*,int *) ;
 int memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;

__attribute__((used)) static int read_kuki_chunk(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[0];

    if (size < 0 || size > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return -1;

    if (st->codecpar->codec_id == AV_CODEC_ID_AAC) {



        int strt, skip;

        strt = avio_tell(pb);
        ff_mov_read_esds(s, pb);
        skip = size - (avio_tell(pb) - strt);
        if (skip < 0 || !st->codecpar->extradata ||
            st->codecpar->codec_id != AV_CODEC_ID_AAC) {
            av_log(s, AV_LOG_ERROR, "invalid AAC magic cookie\n");
            return AVERROR_INVALIDDATA;
        }
        avio_skip(pb, skip);
    } else if (st->codecpar->codec_id == AV_CODEC_ID_ALAC) {



        uint8_t preamble[12];
        if (size < 24) {
            av_log(s, AV_LOG_ERROR, "invalid ALAC magic cookie\n");
            avio_skip(pb, size);
            return AVERROR_INVALIDDATA;
        }
        if (avio_read(pb, preamble, 12) != 12) {
            av_log(s, AV_LOG_ERROR, "failed to read preamble\n");
            return AVERROR_INVALIDDATA;
        }

        av_freep(&st->codecpar->extradata);
        if (ff_alloc_extradata(st->codecpar, 36))
            return AVERROR(ENOMEM);





        if (!memcmp(&preamble[4], "frmaalac", 8)) {
            if (size < 12 + 36) {
                av_log(s, AV_LOG_ERROR, "invalid ALAC magic cookie\n");
                av_freep(&st->codecpar->extradata);
                return AVERROR_INVALIDDATA;
            }
            if (avio_read(pb, st->codecpar->extradata, 36) != 36) {
                av_log(s, AV_LOG_ERROR, "failed to read kuki header\n");
                av_freep(&st->codecpar->extradata);
                return AVERROR_INVALIDDATA;
            }
            avio_skip(pb, size - 12 - 36);
        } else {
            AV_WB32(st->codecpar->extradata, 36);
            memcpy(&st->codecpar->extradata[4], "alac", 4);
            AV_WB32(&st->codecpar->extradata[8], 0);
            memcpy(&st->codecpar->extradata[12], preamble, 12);
            if (avio_read(pb, &st->codecpar->extradata[24], 24 - 12) != 24 - 12) {
                av_log(s, AV_LOG_ERROR, "failed to read new kuki header\n");
                av_freep(&st->codecpar->extradata);
                return AVERROR_INVALIDDATA;
            }
            avio_skip(pb, size - 24);
        }
    } else if (st->codecpar->codec_id == AV_CODEC_ID_OPUS) {


        if (st->codecpar->channels > 2) {
            avpriv_request_sample(s, "multichannel Opus in CAF");
            return AVERROR_PATCHWELCOME;
        }
        avio_skip(pb, size);
    } else {
        av_freep(&st->codecpar->extradata);
        if (ff_get_extradata(s, st->codecpar, pb, size) < 0)
            return AVERROR(ENOMEM);
    }

    return 0;
}
