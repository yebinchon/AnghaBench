
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum dv_pack_type { ____Placeholder_dv_pack_type } dv_pack_type ;
struct TYPE_9__ {scalar_t__ pix_fmt; int dsf; int video_stype; } ;
struct TYPE_8__ {TYPE_5__* sys; TYPE_2__* avctx; TYPE_1__* frame; } ;
struct TYPE_7__ {int height; int width; int sample_aspect_ratio; } ;
struct TYPE_6__ {scalar_t__ top_field_first; } ;
typedef TYPE_3__ DVVideoContext ;


 scalar_t__ AV_PIX_FMT_YUV420P ;
 scalar_t__ DV_PROFILE_IS_HD (TYPE_5__*) ;
 int av_q2d (int ) ;





__attribute__((used)) static inline int dv_write_pack(enum dv_pack_type pack_id, DVVideoContext *c,
                                uint8_t *buf)
{
    uint8_t aspect = 0;
    int apt = (c->sys->pix_fmt == AV_PIX_FMT_YUV420P ? 0 : 1);
    int fs;

    if (c->avctx->height >= 720)
        fs = c->avctx->height == 720 || c->frame->top_field_first ? 0x40 : 0x00;
    else
        fs = c->frame->top_field_first ? 0x00 : 0x40;

    if (DV_PROFILE_IS_HD(c->sys) ||
        (int)(av_q2d(c->avctx->sample_aspect_ratio) *
              c->avctx->width / c->avctx->height * 10) >= 17)

        aspect = 0x02;

    buf[0] = (uint8_t) pack_id;
    switch (pack_id) {
    case 131:
    case 130:
        buf[1] = 0xf8 |
                 (apt & 0x07);
        buf[2] = (0 << 7) |
                 (0x0f << 3) |
                 (apt & 0x07);
        buf[3] = (0 << 7) |
                 (0x0f << 3) |
                 (apt & 0x07);
        buf[4] = (0 << 7) |
                 (0x0f << 3) |
                 (apt & 0x07);
        break;
    case 128:
        buf[1] = 0xff;
        buf[2] = (1 << 7) |
                 (1 << 6) |
                 (3 << 4) |
                 0xf;
        buf[3] = (3 << 6) |
                 (c->sys->dsf << 5) |
                 c->sys->video_stype;
        buf[4] = 0xff;
        break;
    case 129:
        buf[1] = (0 << 6) |
                 0x3f;
        buf[2] = 0xc8 |
                 aspect;
        buf[3] = (1 << 7) |
                 fs |
                 (1 << 5) |
                 (1 << 4) |
                 0xc;
        buf[4] = 0xff;
        break;
    default:
        buf[1] =
        buf[2] =
        buf[3] =
        buf[4] = 0xff;
    }
    return 5;
}
