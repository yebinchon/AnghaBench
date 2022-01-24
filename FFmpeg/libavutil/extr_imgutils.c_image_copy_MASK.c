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
typedef  int const ptrdiff_t ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_5__ {int flags; int nb_components; int /*<<< orphan*/  log2_chroma_h; TYPE_1__* comp; } ;
struct TYPE_4__ {scalar_t__ plane; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int AV_PIX_FMT_FLAG_HWACCEL ; 
 int AV_PIX_FMT_FLAG_PAL ; 
 int FUNC1 (int,scalar_t__) ; 
 int FF_PSEUDOPAL ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_2__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void FUNC6(uint8_t *dst_data[4], const ptrdiff_t dst_linesizes[4],
                       const uint8_t *src_data[4], const ptrdiff_t src_linesizes[4],
                       enum AVPixelFormat pix_fmt, int width, int height,
                       void (*copy_plane)(uint8_t *, ptrdiff_t, const uint8_t *,
                                          ptrdiff_t, ptrdiff_t, int))
{
    const AVPixFmtDescriptor *desc = FUNC4(pix_fmt);

    if (!desc || desc->flags & AV_PIX_FMT_FLAG_HWACCEL)
        return;

    if (desc->flags & AV_PIX_FMT_FLAG_PAL ||
        desc->flags & FF_PSEUDOPAL) {
        copy_plane(dst_data[0], dst_linesizes[0],
                   src_data[0], src_linesizes[0],
                   width, height);
        /* copy the palette */
        if ((desc->flags & AV_PIX_FMT_FLAG_PAL) || (dst_data[1] && src_data[1]))
            FUNC5(dst_data[1], src_data[1], 4*256);
    } else {
        int i, planes_nb = 0;

        for (i = 0; i < desc->nb_components; i++)
            planes_nb = FUNC1(planes_nb, desc->comp[i].plane + 1);

        for (i = 0; i < planes_nb; i++) {
            int h = height;
            ptrdiff_t bwidth = FUNC2(pix_fmt, width, i);
            if (bwidth < 0) {
                FUNC3(NULL, AV_LOG_ERROR, "av_image_get_linesize failed\n");
                return;
            }
            if (i == 1 || i == 2) {
                h = FUNC0(height, desc->log2_chroma_h);
            }
            copy_plane(dst_data[i], dst_linesizes[i],
                       src_data[i], src_linesizes[i],
                       bwidth, h);
        }
    }
}