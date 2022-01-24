#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {scalar_t__ count; TYPE_1__* palette; } ;
struct TYPE_11__ {int height; TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_6__ palettes; } ;
struct TYPE_9__ {int id; int /*<<< orphan*/ * clut; } ;
typedef  TYPE_1__ PGSSubPalette ;
typedef  TYPE_2__ PGSSubContext ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ MAX_EPOCH_PALETTES ; 
 int MAX_NEG_CROP ; 
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/ * ff_crop_tab ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int,int,int,int,int) ; 
 TYPE_1__* FUNC7 (int,TYPE_6__*) ; 

__attribute__((used)) static int FUNC8(AVCodecContext *avctx,
                                  const uint8_t *buf, int buf_size)
{
    PGSSubContext *ctx = avctx->priv_data;
    PGSSubPalette *palette;

    const uint8_t *buf_end = buf + buf_size;
    const uint8_t *cm      = ff_crop_tab + MAX_NEG_CROP;
    int color_id;
    int y, cb, cr, alpha;
    int r, g, b, r_add, g_add, b_add;
    int id;

    id  = FUNC5(&buf);
    palette = FUNC7(id, &ctx->palettes);
    if (!palette) {
        if (ctx->palettes.count >= MAX_EPOCH_PALETTES) {
            FUNC4(avctx, AV_LOG_ERROR, "Too many palettes in epoch\n");
            return AVERROR_INVALIDDATA;
        }
        palette = &ctx->palettes.palette[ctx->palettes.count++];
        palette->id  = id;
    }

    /* Skip palette version */
    buf += 1;

    while (buf < buf_end) {
        color_id  = FUNC5(&buf);
        y         = FUNC5(&buf);
        cr        = FUNC5(&buf);
        cb        = FUNC5(&buf);
        alpha     = FUNC5(&buf);

        /* Default to BT.709 colorspace. In case of <= 576 height use BT.601 */
        if (avctx->height <= 0 || avctx->height > 576) {
            FUNC2(cb, cr);
        } else {
            FUNC1(cb, cr);
        }

        FUNC3(r, g, b, y);

        FUNC6(avctx, "Color %d := (%d,%d,%d,%d)\n", color_id, r, g, b, alpha);

        /* Store color in palette */
        palette->clut[color_id] = FUNC0(r,g,b,alpha);
    }
    return 0;
}