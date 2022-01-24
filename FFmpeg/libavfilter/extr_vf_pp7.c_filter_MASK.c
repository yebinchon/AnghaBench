#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_4__ {int temp_stride; int* src; int qp; int (* requantize ) (TYPE_1__*,int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* dctB ) (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/  qscale_type; } ;
typedef  TYPE_1__ PP7Context ;

/* Variables and functions */
 int const FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*,int const) ; 
 int** dither ; 
 int FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(PP7Context *p, uint8_t *dst, uint8_t *src,
                   int dst_stride, int src_stride,
                   int width, int height,
                   uint8_t *qp_store, int qp_stride, int is_luma)
{
    int x, y;
    const int stride = is_luma ? p->temp_stride : ((width + 16 + 15) & (~15));
    uint8_t *p_src = p->src + 8 * stride;
    int16_t *block = (int16_t *)p->src;
    int16_t *temp  = (int16_t *)(p->src + 32);

    if (!src || !dst) return;
    for (y = 0; y < height; y++) {
        int index = 8 + 8 * stride + y * stride;
        FUNC3(p_src + index, src + y * src_stride, width);
        for (x = 0; x < 8; x++) {
            p_src[index         - x - 1]= p_src[index +         x    ];
            p_src[index + width + x    ]= p_src[index + width - x - 1];
        }
    }
    for (y = 0; y < 8; y++) {
        FUNC3(p_src + (    7 - y     ) * stride, p_src + (    y + 8     ) * stride, stride);
        FUNC3(p_src + (height + 8 + y) * stride, p_src + (height - y + 7) * stride, stride);
    }
    //FIXME (try edge emu)

    for (y = 0; y < height; y++) {
        for (x = -8; x < 0; x += 4) {
            const int index = x + y * stride + (8 - 3) * (1 + stride) + 8; //FIXME silly offset
            uint8_t *src  = p_src + index;
            int16_t *tp   = temp + 4 * x;

            FUNC1(tp + 4 * 8, src, stride);
        }
        for (x = 0; x < width; ) {
            const int qps = 3 + is_luma;
            int qp;
            int end = FUNC0(x + 8, width);

            if (p->qp)
                qp = p->qp;
            else {
                qp = qp_store[ (FUNC0(x, width - 1) >> qps) + (FUNC0(y, height - 1) >> qps) * qp_stride];
                qp = FUNC2(qp, p->qscale_type);
            }
            for (; x < end; x++) {
                const int index = x + y * stride + (8 - 3) * (1 + stride) + 8; //FIXME silly offset
                uint8_t *src = p_src + index;
                int16_t *tp  = temp + 4 * x;
                int v;

                if ((x & 3) == 0)
                    FUNC1(tp + 4 * 8, src, stride);

                p->dctB(block, tp);

                v = p->requantize(p, block, qp);
                v = (v + dither[y & 7][x & 7]) >> 6;
                if ((unsigned)v > 255)
                    v = (-v) >> 31;
                dst[x + y * dst_stride] = v;
            }
        }
    }
}