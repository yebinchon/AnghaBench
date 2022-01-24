#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int nb_components; int log2_chroma_h; int flags; TYPE_1__* comp; } ;
struct TYPE_4__ {int /*<<< orphan*/  plane; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_FLAG_PAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int*,int,int) ; 
 int FUNC7 (int,int,int,int) ; 
 TYPE_2__* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC10(uint8_t *dst, int dst_size,
                            const uint8_t * const src_data[4],
                            const int src_linesize[4],
                            enum AVPixelFormat pix_fmt,
                            int width, int height, int align)
{
    int i, j, nb_planes = 0, linesize[4];
    int size = FUNC7(pix_fmt, width, height, align);
    const AVPixFmtDescriptor *desc = FUNC8(pix_fmt);
    int ret;

    if (size > dst_size || size < 0 || !desc)
        return FUNC0(EINVAL);

    for (i = 0; i < desc->nb_components; i++)
        nb_planes = FUNC4(desc->comp[i].plane, nb_planes);

    nb_planes++;

    ret = FUNC6(linesize, pix_fmt, width);
    FUNC5(ret >= 0); // was checked previously

    for (i = 0; i < nb_planes; i++) {
        int h, shift = (i == 1 || i == 2) ? desc->log2_chroma_h : 0;
        const uint8_t *src = src_data[i];
        h = (height + (1 << shift) - 1) >> shift;

        for (j = 0; j < h; j++) {
            FUNC9(dst, src, linesize[i]);
            dst += FUNC3(linesize[i], align);
            src += src_linesize[i];
        }
    }

    if (desc->flags & AV_PIX_FMT_FLAG_PAL) {
        uint32_t *d32 = (uint32_t *)dst;

        for (i = 0; i<256; i++)
            FUNC2(d32 + i, FUNC1(src_data[1] + 4*i));
    }

    return size;
}