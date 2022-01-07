
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef char uint8_t ;
struct TYPE_14__ {int* priv_data; int * pb; TYPE_2__** streams; } ;
struct TYPE_13__ {char** data; int * linesize; } ;
struct TYPE_12__ {size_t stream_index; scalar_t__ data; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {int width; int height; int format; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AV_CEIL_RSHIFT (int,int) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int EIO ;
 int Y4M_FRAME_MAGIC ;
 int Y4M_LINE_MAX ;
 int av_get_pix_fmt_name (int) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_pix_fmt_get_chroma_sub_sample (int const,int*,int*) ;
 int avio_printf (int *,char*,int ) ;
 int avio_write (int *,char*,int) ;
 int strlen (char*) ;
 scalar_t__ yuv4_generate_header (TYPE_5__*,char*) ;

__attribute__((used)) static int yuv4_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    AVStream *st = s->streams[pkt->stream_index];
    AVIOContext *pb = s->pb;
    AVFrame *frame;
    int* first_pkt = s->priv_data;
    int width, height, h_chroma_shift, v_chroma_shift;
    int i;
    char buf2[Y4M_LINE_MAX + 1];
    uint8_t *ptr, *ptr1, *ptr2;

    frame = (AVFrame *)pkt->data;


    if (*first_pkt) {
        *first_pkt = 0;
        if (yuv4_generate_header(s, buf2) < 0) {
            av_log(s, AV_LOG_ERROR,
                   "Error. YUV4MPEG stream header write failed.\n");
            return AVERROR(EIO);
        } else {
            avio_write(pb, buf2, strlen(buf2));
        }
    }



    avio_printf(s->pb, "%s\n", Y4M_FRAME_MAGIC);

    width = st->codecpar->width;
    height = st->codecpar->height;

    ptr = frame->data[0];

    switch (st->codecpar->format) {
    case 151:
    case 149:
    case 148:
    case 142:
    case 136:

    case 130:
    case 129:
    case 128:
        break;
    case 150:
    case 154:
    case 153:
    case 152:
    case 143:
    case 137:
    case 131:
    case 147:
    case 141:
    case 135:
    case 146:
    case 140:
    case 134:
    case 145:
    case 139:
    case 133:
    case 144:
    case 138:
    case 132:
        width *= 2;
        break;
    default:
        av_log(s, AV_LOG_ERROR, "The pixel format '%s' is not supported.\n",
               av_get_pix_fmt_name(st->codecpar->format));
        return AVERROR(EINVAL);
    }

    for (i = 0; i < height; i++) {
        avio_write(pb, ptr, width);
        ptr += frame->linesize[0];
    }

    if (st->codecpar->format != 151 && st->codecpar->format != 150 &&
        st->codecpar->format != 154 && st->codecpar->format != 153 &&
        st->codecpar->format != 152) {

        av_pix_fmt_get_chroma_sub_sample(st->codecpar->format, &h_chroma_shift,
                                         &v_chroma_shift);

        width = AV_CEIL_RSHIFT(width, h_chroma_shift);
        height = AV_CEIL_RSHIFT(height, v_chroma_shift);

        ptr1 = frame->data[1];
        ptr2 = frame->data[2];
        for (i = 0; i < height; i++) {
            avio_write(pb, ptr1, width);
            ptr1 += frame->linesize[1];
        }
        for (i = 0; i < height; i++) {
            avio_write(pb, ptr2, width);
            ptr2 += frame->linesize[2];
        }
    }

    return 0;
}
