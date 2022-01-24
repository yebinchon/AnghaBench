#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_12__ {int width; int height; int flags; scalar_t__ len; unsigned int data_size; int /*<<< orphan*/  data; } ;
struct TYPE_11__ {int /*<<< orphan*/ * blockbuffer; } ;
typedef  int /*<<< orphan*/  Palette ;
typedef  TYPE_1__ FlashSV2Context ;
typedef  TYPE_2__ Block ;

/* Variables and functions */
 int COLORSPACE_15_7 ; 
 int ZLIB_PRIME_COMPRESS_PREVIOUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/  const*,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,unsigned int*,int) ; 
 int FUNC3 (TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,unsigned int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static int FUNC5(FlashSV2Context *s, Palette * palette, Block * b,
                        Block * prev, const uint8_t * src, int stride, int comp,
                        int dist, int keyframe)
{
    unsigned buf_size = b->width * b->height * 6;
    uint8_t *buf = s->blockbuffer;
    int res;

    if (b->flags & COLORSPACE_15_7) {
        FUNC0(palette, b, src, stride, dist);
    } else {
        FUNC1(b, src, stride);
    }

    if (b->len > 0) {
        b->data_size = buf_size;
        res = FUNC2(b, b->data, &b->data_size, comp);
        if (res)
            return res;

        if (!keyframe) {
            res = FUNC3(b, prev, buf, &buf_size, comp);
            if (res)
                return res;

            if (buf_size < b->data_size) {
                b->data_size = buf_size;
                FUNC4(b->data, buf, buf_size);
                b->flags |= ZLIB_PRIME_COMPRESS_PREVIOUS;
            }
        }
    } else {
        b->data_size = 0;
    }
    return 0;
}