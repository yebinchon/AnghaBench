#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mmxctx ;
typedef  int /*<<< orphan*/  cctx ;
struct TYPE_9__ {int /*<<< orphan*/  flags; } ;
struct TYPE_8__ {int /*<<< orphan*/ ** pix_abs; } ;
typedef  TYPE_1__ MECmpContext ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_CODEC_FLAG_BITEXACT ; 
 int AV_CPU_FLAG_MMX ; 
 int AV_CPU_FLAG_MMXEXT ; 
 scalar_t__ HAVE_MMXEXT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(int argc, char **argv)
{
    AVCodecContext *ctx;
    int c;
    MECmpContext cctx, mmxctx;
    int flags[2] = { AV_CPU_FLAG_MMX, AV_CPU_FLAG_MMXEXT };
    int flags_size = HAVE_MMXEXT ? 2 : 1;

    if (argc > 1) {
        FUNC4();
        return 1;
    }

    FUNC6("ffmpeg motion test\n");

    ctx = FUNC2(NULL);
    ctx->flags |= AV_CODEC_FLAG_BITEXACT;
    FUNC0(0);
    FUNC5(&cctx, 0, sizeof(cctx));
    FUNC3(&cctx, ctx);
    for (c = 0; c < flags_size; c++) {
        int x;
        FUNC0(flags[c]);
        FUNC5(&mmxctx, 0, sizeof(mmxctx));
        FUNC3(&mmxctx, ctx);

        for (x = 0; x < 2; x++) {
            FUNC6("%s for %dx%d pixels\n", c ? "mmx2" : "mmx",
                   x ? 8 : 16, x ? 8 : 16);
            FUNC7("mmx",     mmxctx.pix_abs[x][0], cctx.pix_abs[x][0]);
            FUNC7("mmx_x2",  mmxctx.pix_abs[x][1], cctx.pix_abs[x][1]);
            FUNC7("mmx_y2",  mmxctx.pix_abs[x][2], cctx.pix_abs[x][2]);
            FUNC7("mmx_xy2", mmxctx.pix_abs[x][3], cctx.pix_abs[x][3]);
        }
    }
    FUNC1(ctx);

    return 0;
}