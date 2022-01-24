#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  framerate; } ;
struct TYPE_7__ {int width; int height; int mb_width; int mb_height; int /*<<< orphan*/  top_qp; TYPE_2__* avctx; int /*<<< orphan*/  gb; int /*<<< orphan*/  low_delay; void* aspect_ratio; void* level; void* profile; } ;
typedef  TYPE_1__ AVSContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,char*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/ * ff_mpeg12_frame_rate_tab ; 
 int FUNC3 (TYPE_2__*,int,int) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(AVSContext *h)
{
    int frame_rate_code;
    int width, height;
    int ret;

    h->profile = FUNC4(&h->gb, 8);
    h->level   = FUNC4(&h->gb, 8);
    FUNC7(&h->gb); //progressive sequence

    width  = FUNC4(&h->gb, 14);
    height = FUNC4(&h->gb, 14);
    if ((h->width || h->height) && (h->width != width || h->height != height)) {
        FUNC1(h->avctx,
                                      "Width/height changing in CAVS");
        return AVERROR_PATCHWELCOME;
    }
    if (width <= 0 || height <= 0) {
        FUNC0(h->avctx, AV_LOG_ERROR, "Dimensions invalid\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC6(&h->gb, 2); //chroma format
    FUNC6(&h->gb, 3); //sample_precision
    h->aspect_ratio = FUNC4(&h->gb, 4);
    frame_rate_code = FUNC4(&h->gb, 4);
    if (frame_rate_code == 0 || frame_rate_code > 13) {
        FUNC0(h->avctx, AV_LOG_WARNING,
               "frame_rate_code %d is invalid\n", frame_rate_code);
        frame_rate_code = 1;
    }

    FUNC6(&h->gb, 18); //bit_rate_lower
    FUNC7(&h->gb);    //marker_bit
    FUNC6(&h->gb, 12); //bit_rate_upper
    h->low_delay =  FUNC5(&h->gb);

    ret = FUNC3(h->avctx, width, height);
    if (ret < 0)
        return ret;

    h->width  = width;
    h->height = height;
    h->mb_width  = (h->width  + 15) >> 4;
    h->mb_height = (h->height + 15) >> 4;
    h->avctx->framerate = ff_mpeg12_frame_rate_tab[frame_rate_code];
    if (!h->top_qp)
        return FUNC2(h);
    return 0;
}