#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int HEIGHT ; 
 int WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC2(AVCodecContext *avctx, uint8_t *to,
        uint8_t *from, int offset, int height, int stride)
{
    int i;
    int width = height;
    int from_x = offset % WIDTH;
    int from_y = offset / WIDTH;
    int overflow = from_x + width - WIDTH;

    if (!from) {
        /* silently ignoring predictive blocks in first frame */
        return 0;
    }

    if (from_y + height > HEIGHT) {
        FUNC0(avctx, AV_LOG_ERROR, "invalid offset %d during C93 decoding\n",
               offset);
        return AVERROR_INVALIDDATA;
    }

    if (overflow > 0) {
        width -= overflow;
        for (i = 0; i < height; i++) {
            FUNC1(&to[i*stride+width], &from[(from_y+i)*stride], overflow);
        }
    }

    for (i = 0; i < height; i++) {
        FUNC1(&to[i*stride], &from[(from_y+i)*stride+from_x], width);
    }

    return 0;
}