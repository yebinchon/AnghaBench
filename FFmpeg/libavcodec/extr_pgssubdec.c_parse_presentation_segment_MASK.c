#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_13__ {int err_recognition; int width; int height; TYPE_3__* priv_data; } ;
struct TYPE_11__ {int palette_id; int object_count; TYPE_1__* objects; void* id_number; int /*<<< orphan*/  pts; } ;
struct TYPE_12__ {TYPE_2__ presentation; } ;
struct TYPE_10__ {int window_id; int composition_flag; int x; int y; void* crop_h; void* crop_w; void* crop_y; void* crop_x; void* id; } ;
typedef  TYPE_3__ PGSSubContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AV_EF_EXPLODE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MAX_OBJECT_REFS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 void* FUNC1 (int /*<<< orphan*/  const**) ; 
 int FUNC2 (int /*<<< orphan*/  const**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int,int) ; 
 int FUNC4 (TYPE_4__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx,
                                      const uint8_t *buf, int buf_size,
                                      int64_t pts)
{
    PGSSubContext *ctx = avctx->priv_data;
    int i, state, ret;
    const uint8_t *buf_end = buf + buf_size;

    // Video descriptor
    int w = FUNC1(&buf);
    int h = FUNC1(&buf);

    ctx->presentation.pts = pts;

    FUNC3(avctx, "Video Dimensions %dx%d\n",
            w, h);
    ret = FUNC4(avctx, w, h);
    if (ret < 0)
        return ret;

    /* Skip 1 bytes of unknown, frame rate */
    buf++;

    // Composition descriptor
    ctx->presentation.id_number = FUNC1(&buf);
    /*
     * state is a 2 bit field that defines pgs epoch boundaries
     * 00 - Normal, previously defined objects and palettes are still valid
     * 01 - Acquisition point, previous objects and palettes can be released
     * 10 - Epoch start, previous objects and palettes can be released
     * 11 - Epoch continue, previous objects and palettes can be released
     *
     * reserved 6 bits discarded
     */
    state = FUNC2(&buf) >> 6;
    if (state != 0) {
        FUNC5(avctx);
    }

    /*
     * skip palette_update_flag (0x80),
     */
    buf += 1;
    ctx->presentation.palette_id = FUNC2(&buf);
    ctx->presentation.object_count = FUNC2(&buf);
    if (ctx->presentation.object_count > MAX_OBJECT_REFS) {
        FUNC0(avctx, AV_LOG_ERROR,
               "Invalid number of presentation objects %d\n",
               ctx->presentation.object_count);
        ctx->presentation.object_count = 2;
        if (avctx->err_recognition & AV_EF_EXPLODE) {
            return AVERROR_INVALIDDATA;
        }
    }


    for (i = 0; i < ctx->presentation.object_count; i++)
    {

        if (buf_end - buf < 8) {
            FUNC0(avctx, AV_LOG_ERROR, "Insufficent space for object\n");
            ctx->presentation.object_count = i;
            return AVERROR_INVALIDDATA;
        }

        ctx->presentation.objects[i].id = FUNC1(&buf);
        ctx->presentation.objects[i].window_id = FUNC2(&buf);
        ctx->presentation.objects[i].composition_flag = FUNC2(&buf);

        ctx->presentation.objects[i].x = FUNC1(&buf);
        ctx->presentation.objects[i].y = FUNC1(&buf);

        // If cropping
        if (ctx->presentation.objects[i].composition_flag & 0x80) {
            ctx->presentation.objects[i].crop_x = FUNC1(&buf);
            ctx->presentation.objects[i].crop_y = FUNC1(&buf);
            ctx->presentation.objects[i].crop_w = FUNC1(&buf);
            ctx->presentation.objects[i].crop_h = FUNC1(&buf);
        }

        FUNC3(avctx, "Subtitle Placement x=%d, y=%d\n",
                ctx->presentation.objects[i].x, ctx->presentation.objects[i].y);

        if (ctx->presentation.objects[i].x > avctx->width ||
            ctx->presentation.objects[i].y > avctx->height) {
            FUNC0(avctx, AV_LOG_ERROR, "Subtitle out of video bounds. x = %d, y = %d, video width = %d, video height = %d.\n",
                   ctx->presentation.objects[i].x,
                   ctx->presentation.objects[i].y,
                    avctx->width, avctx->height);
            ctx->presentation.objects[i].x = 0;
            ctx->presentation.objects[i].y = 0;
            if (avctx->err_recognition & AV_EF_EXPLODE) {
                return AVERROR_INVALIDDATA;
            }
        }
    }

    return 0;
}