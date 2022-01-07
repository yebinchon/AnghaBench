
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_9__ {int hd_buf; int header_info; } ;
struct TYPE_8__ {int codec_id; } ;
struct TYPE_7__ {TYPE_2__* codecpar; } ;
typedef TYPE_3__ IEC61937Context ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int ENOMEM ;
 int MAT_FRAME_SIZE ;
 int av_malloc (int ) ;
 int avpriv_report_missing_feature (TYPE_4__*,char*,int) ;
 int spdif_header_aac ;
 int spdif_header_ac3 ;
 int spdif_header_dts ;
 int spdif_header_eac3 ;
 int spdif_header_mpeg ;
 int spdif_header_truehd ;

__attribute__((used)) static int spdif_write_header(AVFormatContext *s)
{
    IEC61937Context *ctx = s->priv_data;

    switch (s->streams[0]->codecpar->codec_id) {
    case 135:
        ctx->header_info = spdif_header_ac3;
        break;
    case 133:
        ctx->header_info = spdif_header_eac3;
        break;
    case 131:
    case 130:
    case 129:
        ctx->header_info = spdif_header_mpeg;
        break;
    case 134:
        ctx->header_info = spdif_header_dts;
        break;
    case 136:
        ctx->header_info = spdif_header_aac;
        break;
    case 128:
    case 132:
        ctx->header_info = spdif_header_truehd;
        ctx->hd_buf = av_malloc(MAT_FRAME_SIZE);
        if (!ctx->hd_buf)
            return AVERROR(ENOMEM);
        break;
    default:
        avpriv_report_missing_feature(s, "Codec %d",
                                      s->streams[0]->codecpar->codec_id);
        return AVERROR_PATCHWELCOME;
    }
    return 0;
}
