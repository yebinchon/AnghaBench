
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_8__ {int extradata_size; int codec_id; scalar_t__ extradata; } ;
struct TYPE_7__ {int pb; TYPE_1__** streams; } ;
struct TYPE_6__ {TYPE_3__* codecpar; } ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 int AVERROR_INVALIDDATA ;


 int AV_LOG_ERROR ;
 int AV_RB32 (scalar_t__) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avio_write (int ,int*,int) ;

__attribute__((used)) static int a64_write_header(AVFormatContext *s)
{
    AVCodecParameters *par = s->streams[0]->codecpar;
    uint8_t header[5] = {
        0x00,
        0x40,
        0x00,
        0x00,
        0x00
    };

    if (par->extradata_size < 4) {
        av_log(s, AV_LOG_ERROR, "Missing extradata\n");
        return AVERROR_INVALIDDATA;
    }

    switch (par->codec_id) {
    case 129:
        header[2] = 0x00;
        header[3] = AV_RB32(par->extradata+0);
        header[4] = 2;
        break;
    case 128:
        header[2] = 0x01;
        header[3] = AV_RB32(par->extradata+0);
        header[4] = 3;
        break;
    default:
        return AVERROR_INVALIDDATA;
    }
    avio_write(s->pb, header, 2);
    return 0;
}
