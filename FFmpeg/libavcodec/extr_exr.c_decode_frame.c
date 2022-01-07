
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_16__ ;


typedef int uint8_t ;
typedef int uint64_t ;
struct TYPE_20__ {void* f; } ;
typedef TYPE_2__ ThreadFrame ;
struct TYPE_24__ {scalar_t__ color_trc; int width; int height; int (* execute2 ) (TYPE_6__*,int ,int ,int *,int) ;int pix_fmt; TYPE_3__* priv_data; } ;
struct TYPE_23__ {int* linesize; int pict_type; int ** data; } ;
struct TYPE_22__ {int size; int * data; } ;
struct TYPE_19__ {int xSize; int ySize; } ;
struct TYPE_21__ {int pixel_type; scalar_t__ apply_trc_type; int compression; int scan_lines_per_block; scalar_t__ xmin; scalar_t__ xmax; int ymin; int ymax; int xdelta; scalar_t__ w; int h; int ydelta; int buf_size; int thread_data; TYPE_5__* picture; int * buf; int gb; TYPE_6__* avctx; scalar_t__ is_tile; TYPE_1__ tile_attr; TYPE_16__* desc; int is_luma; int * channel_offsets; } ;
struct TYPE_18__ {int nb_components; } ;
typedef int PutByteContext ;
typedef TYPE_3__ EXRContext ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFrame ;
typedef TYPE_6__ AVCodecContext ;


 scalar_t__ AVCOL_TRC_UNSPECIFIED ;
 int AVERROR_INVALIDDATA ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_PICTURE_TYPE_I ;
 int AV_PIX_FMT_GRAY16 ;
 int AV_PIX_FMT_RGB48 ;
 int AV_PIX_FMT_RGBA64 ;
 int AV_PIX_FMT_YA16 ;
 int SEEK_SET ;
 int av_log (TYPE_6__*,int ,char*) ;
 TYPE_16__* av_pix_fmt_desc_get (int ) ;
 int avpriv_report_missing_feature (TYPE_6__*,char*,int) ;
 int bytestream2_get_bytes_left (int *) ;
 int bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int *,int) ;
 int bytestream2_init_writer (int *,int *,int) ;
 scalar_t__ bytestream2_peek_le64 (int *) ;
 int bytestream2_put_le64 (int *,int) ;
 int bytestream2_seek (int *,int,int ) ;
 int bytestream2_tell (int *) ;
 int decode_block ;
 int decode_header (TYPE_3__*,TYPE_5__*) ;
 int ff_set_dimensions (TYPE_6__*,scalar_t__,int) ;
 int ff_thread_get_buffer (TYPE_6__*,TYPE_2__*,int ) ;
 int memset (int *,int ,int) ;
 int stub1 (TYPE_6__*,int ,int ,int *,int) ;

__attribute__((used)) static int decode_frame(AVCodecContext *avctx, void *data,
                        int *got_frame, AVPacket *avpkt)
{
    EXRContext *s = avctx->priv_data;
    ThreadFrame frame = { .f = data };
    AVFrame *picture = data;
    uint8_t *ptr;

    int y, ret;
    int out_line_size;
    int nb_blocks;
    uint64_t start_offset_table;
    uint64_t start_next_scanline;
    PutByteContext offset_table_writer;

    bytestream2_init(&s->gb, avpkt->data, avpkt->size);

    if ((ret = decode_header(s, picture)) < 0)
        return ret;

    switch (s->pixel_type) {
    case 136:
    case 135:
    case 130:
        if (s->channel_offsets[3] >= 0) {
            if (!s->is_luma) {
                avctx->pix_fmt = AV_PIX_FMT_RGBA64;
            } else {
                avctx->pix_fmt = AV_PIX_FMT_YA16;
            }
        } else {
            if (!s->is_luma) {
                avctx->pix_fmt = AV_PIX_FMT_RGB48;
            } else {
                avctx->pix_fmt = AV_PIX_FMT_GRAY16;
            }
        }
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "Missing channel list.\n");
        return AVERROR_INVALIDDATA;
    }

    if (s->apply_trc_type != AVCOL_TRC_UNSPECIFIED)
        avctx->color_trc = s->apply_trc_type;

    switch (s->compression) {
    case 132:
    case 131:
    case 129:
        s->scan_lines_per_block = 1;
        break;
    case 133:
    case 128:
        s->scan_lines_per_block = 16;
        break;
    case 134:
    case 138:
    case 137:
        s->scan_lines_per_block = 32;
        break;
    default:
        avpriv_report_missing_feature(avctx, "Compression %d", s->compression);
        return AVERROR_PATCHWELCOME;
    }



    if (s->xmin > s->xmax ||
        s->ymin > s->ymax ||
        s->xdelta != s->xmax - s->xmin + 1 ||
        s->xmax >= s->w ||
        s->ymax >= s->h) {
        av_log(avctx, AV_LOG_ERROR, "Wrong or missing size information.\n");
        return AVERROR_INVALIDDATA;
    }

    if ((ret = ff_set_dimensions(avctx, s->w, s->h)) < 0)
        return ret;

    s->desc = av_pix_fmt_desc_get(avctx->pix_fmt);
    if (!s->desc)
        return AVERROR_INVALIDDATA;
    out_line_size = avctx->width * 2 * s->desc->nb_components;

    if (s->is_tile) {
        nb_blocks = ((s->xdelta + s->tile_attr.xSize - 1) / s->tile_attr.xSize) *
        ((s->ydelta + s->tile_attr.ySize - 1) / s->tile_attr.ySize);
    } else {
        nb_blocks = (s->ydelta + s->scan_lines_per_block - 1) /
        s->scan_lines_per_block;
    }

    if ((ret = ff_thread_get_buffer(avctx, &frame, 0)) < 0)
        return ret;

    if (bytestream2_get_bytes_left(&s->gb) < nb_blocks * 8)
        return AVERROR_INVALIDDATA;


    if (!s->is_tile && bytestream2_peek_le64(&s->gb) == 0) {
        av_log(s->avctx, AV_LOG_DEBUG, "recreating invalid scanline offset table\n");

        start_offset_table = bytestream2_tell(&s->gb);
        start_next_scanline = start_offset_table + nb_blocks * 8;
        bytestream2_init_writer(&offset_table_writer, &avpkt->data[start_offset_table], nb_blocks * 8);

        for (y = 0; y < nb_blocks; y++) {

            bytestream2_put_le64(&offset_table_writer, start_next_scanline);


            bytestream2_seek(&s->gb, start_next_scanline + 4, SEEK_SET);
            start_next_scanline += (bytestream2_get_le32(&s->gb) + 8);
        }
        bytestream2_seek(&s->gb, start_offset_table, SEEK_SET);
    }


    s->buf = avpkt->data;
    s->buf_size = avpkt->size;
    ptr = picture->data[0];


    for (y = 0; y < s->ymin; y++) {
        memset(ptr, 0, out_line_size);
        ptr += picture->linesize[0];
    }

    s->picture = picture;

    avctx->execute2(avctx, decode_block, s->thread_data, ((void*)0), nb_blocks);


    ptr = picture->data[0] + ((s->ymax+1) * picture->linesize[0]);
    for (y = s->ymax + 1; y < avctx->height; y++) {
        memset(ptr, 0, out_line_size);
        ptr += picture->linesize[0];
    }

    picture->pict_type = AV_PICTURE_TYPE_I;
    *got_frame = 1;

    return avpkt->size;
}
