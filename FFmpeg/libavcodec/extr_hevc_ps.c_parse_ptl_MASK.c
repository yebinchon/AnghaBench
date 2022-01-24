#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {void* level_idc; } ;
struct TYPE_4__ {TYPE_3__* sub_layer_ptl; void** sub_layer_level_present_flag; void** sub_layer_profile_present_flag; TYPE_3__ general_ptl; } ;
typedef  TYPE_1__ PTL ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_3__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(GetBitContext *gb, AVCodecContext *avctx,
                      PTL *ptl, int max_num_sub_layers)
{
    int i;
    if (FUNC1(gb, avctx, &ptl->general_ptl) < 0 ||
        FUNC4(gb) < 8 + (8*2 * (max_num_sub_layers - 1 > 0))) {
        FUNC0(avctx, AV_LOG_ERROR, "PTL information too short\n");
        return -1;
    }

    ptl->general_ptl.level_idc = FUNC2(gb, 8);

    for (i = 0; i < max_num_sub_layers - 1; i++) {
        ptl->sub_layer_profile_present_flag[i] = FUNC3(gb);
        ptl->sub_layer_level_present_flag[i]   = FUNC3(gb);
    }

    if (max_num_sub_layers - 1> 0)
        for (i = max_num_sub_layers - 1; i < 8; i++)
            FUNC5(gb, 2); // reserved_zero_2bits[i]
    for (i = 0; i < max_num_sub_layers - 1; i++) {
        if (ptl->sub_layer_profile_present_flag[i] &&
            FUNC1(gb, avctx, &ptl->sub_layer_ptl[i]) < 0) {
            FUNC0(avctx, AV_LOG_ERROR,
                   "PTL information for sublayer %i too short\n", i);
            return -1;
        }
        if (ptl->sub_layer_level_present_flag[i]) {
            if (FUNC4(gb) < 8) {
                FUNC0(avctx, AV_LOG_ERROR,
                       "Not enough data for sublayer %i level_idc\n", i);
                return -1;
            } else
                ptl->sub_layer_ptl[i].level_idc = FUNC2(gb, 8);
        }
    }

    return 0;
}