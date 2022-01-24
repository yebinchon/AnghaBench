#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_6__ {scalar_t__ y; scalar_t__ x; } ;
typedef  TYPE_1__ svq1_pmv ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_7__ {int /*<<< orphan*/  table; } ;
typedef  int /*<<< orphan*/  HpelDSPContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
#define  SVQ1_BLOCK_INTER 131 
#define  SVQ1_BLOCK_INTER_4V 130 
#define  SVQ1_BLOCK_INTRA 129 
#define  SVQ1_BLOCK_SKIP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 TYPE_5__ svq1_block_type ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC7(AVCodecContext *avctx, HpelDSPContext *hdsp,
                                   GetBitContext *bitbuf,
                                   uint8_t *current, uint8_t *previous,
                                   ptrdiff_t pitch, svq1_pmv *motion, int x, int y,
                                   int width, int height)
{
    uint32_t block_type;
    int result = 0;

    /* get block type */
    block_type = FUNC1(bitbuf, svq1_block_type.table, 2, 2);

    /* reset motion vectors */
    if (block_type == SVQ1_BLOCK_SKIP || block_type == SVQ1_BLOCK_INTRA) {
        motion[0].x         =
        motion[0].y         =
        motion[x / 8 + 2].x =
        motion[x / 8 + 2].y =
        motion[x / 8 + 3].x =
        motion[x / 8 + 3].y = 0;
    }

    switch (block_type) {
    case SVQ1_BLOCK_SKIP:
        FUNC6(current, previous, pitch, x, y);
        break;

    case SVQ1_BLOCK_INTER:
        result = FUNC5(hdsp, bitbuf, current, previous,
                                         pitch, motion, x, y, width, height);

        if (result != 0) {
            FUNC0(avctx, "Error in svq1_motion_inter_block %i\n", result);
            break;
        }
        result = FUNC3(bitbuf, current, pitch);
        break;

    case SVQ1_BLOCK_INTER_4V:
        result = FUNC4(hdsp, bitbuf, current, previous,
                                            pitch, motion, x, y, width, height);

        if (result != 0) {
            FUNC0(avctx, "Error in svq1_motion_inter_4v_block %i\n", result);
            break;
        }
        result = FUNC3(bitbuf, current, pitch);
        break;

    case SVQ1_BLOCK_INTRA:
        result = FUNC2(bitbuf, current, pitch);
        break;
    }

    return result;
}