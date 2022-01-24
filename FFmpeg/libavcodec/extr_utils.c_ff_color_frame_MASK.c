#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_8__ {int width; int height; int /*<<< orphan*/ * linesize; int /*<<< orphan*/ ** data; int /*<<< orphan*/  format; } ;
struct TYPE_7__ {int flags; int nb_components; TYPE_1__* comp; int /*<<< orphan*/  log2_chroma_h; int /*<<< orphan*/  log2_chroma_w; } ;
struct TYPE_6__ {int depth; } ;
typedef  TYPE_2__ AVPixFmtDescriptor ;
typedef  TYPE_3__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int AV_PIX_FMT_FLAG_PLANAR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const,int) ; 

void FUNC6(AVFrame *frame, const int c[4])
{
    const AVPixFmtDescriptor *desc = FUNC3(frame->format);
    int p, y;

    FUNC1(desc->flags & AV_PIX_FMT_FLAG_PLANAR);

    for (p = 0; p<desc->nb_components; p++) {
        uint8_t *dst = frame->data[p];
        int is_chroma = p == 1 || p == 2;
        int bytes  = is_chroma ? FUNC0(frame->width,  desc->log2_chroma_w) : frame->width;
        int height = is_chroma ? FUNC0(frame->height, desc->log2_chroma_h) : frame->height;
        if (desc->comp[0].depth >= 9) {
            ((uint16_t*)dst)[0] = c[p];
            FUNC2(dst + 2, 2, bytes - 2);
            dst += frame->linesize[p];
            for (y = 1; y < height; y++) {
                FUNC4(dst, frame->data[p], 2*bytes);
                dst += frame->linesize[p];
            }
        } else {
            for (y = 0; y < height; y++) {
                FUNC5(dst, c[p], bytes);
                dst += frame->linesize[p];
            }
        }
    }
}