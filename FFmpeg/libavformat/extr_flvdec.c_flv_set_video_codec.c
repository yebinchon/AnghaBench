
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_12__ {int codec_id; int extradata_size; int codec_tag; int * extradata; } ;
struct TYPE_11__ {int pb; } ;
struct TYPE_10__ {TYPE_1__* internal; int need_parsing; TYPE_4__* codecpar; } ;
struct TYPE_9__ {int need_context_update; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ AVCodecParameters ;


 int AVERROR_PATCHWELCOME ;
 int AVSTREAM_PARSE_HEADERS ;
 int AV_CODEC_ID_FLASHSV ;
 int AV_CODEC_ID_FLASHSV2 ;
 int AV_CODEC_ID_FLV1 ;
 int AV_CODEC_ID_H263 ;
 int AV_CODEC_ID_H264 ;
 int AV_CODEC_ID_MPEG4 ;
 int AV_CODEC_ID_VP6A ;
 int AV_CODEC_ID_VP6F ;
 int avio_r8 (int ) ;
 int avio_skip (int ,int) ;
 int avpriv_request_sample (TYPE_3__*,char*,...) ;
 int ff_alloc_extradata (TYPE_4__*,int) ;

__attribute__((used)) static int flv_set_video_codec(AVFormatContext *s, AVStream *vstream,
                               int flv_codecid, int read)
{
    int ret = 0;
    AVCodecParameters *par = vstream->codecpar;
    enum AVCodecID old_codec_id = vstream->codecpar->codec_id;
    switch (flv_codecid) {
    case 135:
        par->codec_id = AV_CODEC_ID_FLV1;
        break;
    case 132:
        par->codec_id = AV_CODEC_ID_H263;
        break;
    case 131:
        par->codec_id = AV_CODEC_ID_FLASHSV;
        break;
    case 130:
        par->codec_id = AV_CODEC_ID_FLASHSV2;
        break;
    case 129:
        par->codec_id = AV_CODEC_ID_VP6F;
    case 128:
        if (flv_codecid == 128)
            par->codec_id = AV_CODEC_ID_VP6A;
        if (read) {
            if (par->extradata_size != 1) {
                ff_alloc_extradata(par, 1);
            }
            if (par->extradata)
                par->extradata[0] = avio_r8(s->pb);
            else
                avio_skip(s->pb, 1);
        }
        ret = 1;
        break;
    case 134:
        par->codec_id = AV_CODEC_ID_H264;
        vstream->need_parsing = AVSTREAM_PARSE_HEADERS;
        ret = 3;
        break;
    case 133:
        par->codec_id = AV_CODEC_ID_MPEG4;
        ret = 3;
        break;
    default:
        avpriv_request_sample(s, "Video codec (%x)", flv_codecid);
        par->codec_tag = flv_codecid;
    }

    if (!vstream->internal->need_context_update && par->codec_id != old_codec_id) {
        avpriv_request_sample(s, "Changing the codec id midstream");
        return AVERROR_PATCHWELCOME;
    }

    return ret;
}
