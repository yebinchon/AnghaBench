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
struct TYPE_4__ {int /*<<< orphan*/  alternative_transfer; int /*<<< orphan*/  green_metadata; int /*<<< orphan*/  display_orientation; int /*<<< orphan*/  frame_packing; int /*<<< orphan*/  buffering_period; int /*<<< orphan*/  recovery_point; int /*<<< orphan*/  unregistered; int /*<<< orphan*/  picture_timing; } ;
typedef  TYPE_1__ H264SEIContext ;
typedef  int /*<<< orphan*/  H264ParamSets ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PS_NOT_FOUND ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
#define  H264_SEI_TYPE_ALTERNATIVE_TRANSFER 136 
#define  H264_SEI_TYPE_BUFFERING_PERIOD 135 
#define  H264_SEI_TYPE_DISPLAY_ORIENTATION 134 
#define  H264_SEI_TYPE_FRAME_PACKING 133 
#define  H264_SEI_TYPE_GREEN_METADATA 132 
#define  H264_SEI_TYPE_PIC_TIMING 131 
#define  H264_SEI_TYPE_RECOVERY_POINT 130 
#define  H264_SEI_TYPE_USER_DATA_REGISTERED 129 
#define  H264_SEI_TYPE_USER_DATA_UNREGISTERED 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,char*,int,...) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,void*,unsigned int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,unsigned int) ; 
 int FUNC11 (int /*<<< orphan*/ *,int) ; 
 unsigned int FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned int) ; 

int FUNC16(H264SEIContext *h, GetBitContext *gb,
                       const H264ParamSets *ps, void *logctx)
{
    int master_ret = 0;

    while (FUNC13(gb) > 16 && FUNC14(gb, 16)) {
        int type = 0;
        unsigned size = 0;
        unsigned next;
        int ret  = 0;

        do {
            if (FUNC13(gb) < 8)
                return AVERROR_INVALIDDATA;
            type += FUNC14(gb, 8);
        } while (FUNC11(gb, 8) == 255);

        do {
            if (FUNC13(gb) < 8)
                return AVERROR_INVALIDDATA;
            size += FUNC14(gb, 8);
        } while (FUNC11(gb, 8) == 255);

        if (size > FUNC13(gb) / 8) {
            FUNC1(logctx, AV_LOG_ERROR, "SEI type %d size %d truncated at %d\n",
                   type, 8*size, FUNC13(gb));
            return AVERROR_INVALIDDATA;
        }
        next = FUNC12(gb) + 8 * size;

        switch (type) {
        case H264_SEI_TYPE_PIC_TIMING: // Picture timing SEI
            ret = FUNC7(&h->picture_timing, gb, ps, logctx);
            break;
        case H264_SEI_TYPE_USER_DATA_REGISTERED:
            ret = FUNC9(h, gb, logctx, size);
            break;
        case H264_SEI_TYPE_USER_DATA_UNREGISTERED:
            ret = FUNC10(&h->unregistered, gb, logctx, size);
            break;
        case H264_SEI_TYPE_RECOVERY_POINT:
            ret = FUNC8(&h->recovery_point, gb, logctx);
            break;
        case H264_SEI_TYPE_BUFFERING_PERIOD:
            ret = FUNC3(&h->buffering_period, gb, ps, logctx);
            break;
        case H264_SEI_TYPE_FRAME_PACKING:
            ret = FUNC5(&h->frame_packing, gb);
            break;
        case H264_SEI_TYPE_DISPLAY_ORIENTATION:
            ret = FUNC4(&h->display_orientation, gb);
            break;
        case H264_SEI_TYPE_GREEN_METADATA:
            ret = FUNC6(&h->green_metadata, gb);
            break;
        case H264_SEI_TYPE_ALTERNATIVE_TRANSFER:
            ret = FUNC2(&h->alternative_transfer, gb);
            break;
        default:
            FUNC1(logctx, AV_LOG_DEBUG, "unknown SEI type %d\n", type);
        }
        if (ret < 0 && ret != AVERROR_PS_NOT_FOUND)
            return ret;
        if (ret < 0)
            master_ret = ret;

        FUNC15(gb, next - FUNC12(gb));

        // FIXME check bits here
        FUNC0(gb);
    }

    return master_ret;
}