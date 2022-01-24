#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  alternative_transfer; int /*<<< orphan*/  content_light; int /*<<< orphan*/  mastering_display; int /*<<< orphan*/  display_orientation; int /*<<< orphan*/  frame_packing; int /*<<< orphan*/  picture_hash; } ;
typedef  TYPE_1__ HEVCSEI ;
typedef  int /*<<< orphan*/  HEVCParamSets ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
#define  HEVC_SEI_TYPE_ACTIVE_PARAMETER_SETS 135 
#define  HEVC_SEI_TYPE_ALTERNATIVE_TRANSFER_CHARACTERISTICS 134 
#define  HEVC_SEI_TYPE_CONTENT_LIGHT_LEVEL_INFO 133 
#define  HEVC_SEI_TYPE_DISPLAY_ORIENTATION 132 
#define  HEVC_SEI_TYPE_FRAME_PACKING 131 
#define  HEVC_SEI_TYPE_MASTERING_DISPLAY_INFO 130 
#define  HEVC_SEI_TYPE_PICTURE_TIMING 129 
#define  HEVC_SEI_TYPE_USER_DATA_REGISTERED_ITU_T_T35 128 
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,void*,int) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(GetBitContext *gb, void *logctx, HEVCSEI *s,
                                 const HEVCParamSets *ps, int type, int size)
{
    switch (type) {
    case 256:  // Mismatched value from HM 8.1
        return FUNC4(&s->picture_hash, gb);
    case HEVC_SEI_TYPE_FRAME_PACKING:
        return FUNC6(&s->frame_packing, gb);
    case HEVC_SEI_TYPE_DISPLAY_ORIENTATION:
        return FUNC5(&s->display_orientation, gb);
    case HEVC_SEI_TYPE_PICTURE_TIMING:
        return FUNC8(s, gb, ps, logctx, size);
    case HEVC_SEI_TYPE_MASTERING_DISPLAY_INFO:
        return FUNC7(&s->mastering_display, gb);
    case HEVC_SEI_TYPE_CONTENT_LIGHT_LEVEL_INFO:
        return FUNC3(&s->content_light, gb);
    case HEVC_SEI_TYPE_ACTIVE_PARAMETER_SETS:
        return FUNC1(s, gb, logctx);
    case HEVC_SEI_TYPE_USER_DATA_REGISTERED_ITU_T_T35:
        return FUNC9(s, gb, size);
    case HEVC_SEI_TYPE_ALTERNATIVE_TRANSFER_CHARACTERISTICS:
        return FUNC2(&s->alternative_transfer, gb);
    default:
        FUNC0(logctx, AV_LOG_DEBUG, "Skipped PREFIX SEI %d\n", type);
        FUNC10(gb, 8 * size);
        return 0;
    }
}