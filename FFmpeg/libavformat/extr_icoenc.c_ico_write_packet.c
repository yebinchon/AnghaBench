
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int width; int height; scalar_t__ codec_id; int bits_per_coded_sample; } ;
struct TYPE_14__ {TYPE_1__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_13__ {size_t stream_index; int size; scalar_t__ data; } ;
struct TYPE_12__ {int width; int height; int size; int bits; int offset; } ;
struct TYPE_11__ {scalar_t__ current_image; scalar_t__ nb_images; TYPE_3__* images; } ;
struct TYPE_10__ {TYPE_6__* codecpar; } ;
typedef TYPE_2__ IcoMuxContext ;
typedef TYPE_3__ IcoImage ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;
typedef TYPE_6__ AVCodecParameters ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_PNG ;
 int AV_LOG_ERROR ;
 int AV_RL16 (scalar_t__) ;
 int AV_RL32 (scalar_t__) ;
 int EINVAL ;
 int EIO ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wl32 (int *,int) ;
 int avio_write (int *,scalar_t__,int) ;

__attribute__((used)) static int ico_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    IcoMuxContext *ico = s->priv_data;
    IcoImage *image;
    AVIOContext *pb = s->pb;
    AVCodecParameters *par = s->streams[pkt->stream_index]->codecpar;
    int i;

    if (ico->current_image >= ico->nb_images) {
        av_log(s, AV_LOG_ERROR, "ICO already contains %d images\n", ico->current_image);
        return AVERROR(EIO);
    }

    image = &ico->images[ico->current_image++];

    image->offset = avio_tell(pb);
    image->width = (par->width == 256) ? 0 : par->width;
    image->height = (par->height == 256) ? 0 : par->height;

    if (par->codec_id == AV_CODEC_ID_PNG) {
        image->bits = par->bits_per_coded_sample;
        image->size = pkt->size;

        avio_write(pb, pkt->data, pkt->size);
    } else {
        if (AV_RL32(pkt->data + 14) != 40) {
            av_log(s, AV_LOG_ERROR, "Invalid BMP\n");
            return AVERROR(EINVAL);
        }

        image->bits = AV_RL16(pkt->data + 28);
        image->size = pkt->size - 14 + par->height * (par->width + 7) / 8;

        avio_write(pb, pkt->data + 14, 8);
        avio_wl32(pb, AV_RL32(pkt->data + 22) * 2);
        avio_write(pb, pkt->data + 26, pkt->size - 26);

        for (i = 0; i < par->height * (par->width + 7) / 8; ++i)
            avio_w8(pb, 0x00);
    }

    return 0;
}
