#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  enum cavs_mb { ____Placeholder_cavs_mb } cavs_mb ;
struct TYPE_10__ {int* col_type_base; size_t mbidx; int /*<<< orphan*/  ref_flag; int /*<<< orphan*/  gb; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVSContext ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_16X16 ; 
 int /*<<< orphan*/  BLK_16X8 ; 
 int /*<<< orphan*/  BLK_8X16 ; 
 int /*<<< orphan*/  BLK_8X8 ; 
 int /*<<< orphan*/  MV_FWD_A1 ; 
 int /*<<< orphan*/  MV_FWD_B3 ; 
 int /*<<< orphan*/  MV_FWD_C2 ; 
 int /*<<< orphan*/  MV_FWD_X0 ; 
 int /*<<< orphan*/  MV_FWD_X1 ; 
 int /*<<< orphan*/  MV_FWD_X2 ; 
 int /*<<< orphan*/  MV_FWD_X3 ; 
 int /*<<< orphan*/  MV_PRED_LEFT ; 
 int /*<<< orphan*/  MV_PRED_MEDIAN ; 
 int /*<<< orphan*/  MV_PRED_PSKIP ; 
 int /*<<< orphan*/  MV_PRED_TOP ; 
 int /*<<< orphan*/  MV_PRED_TOPRIGHT ; 
#define  P_16X16 132 
#define  P_16X8 131 
#define  P_8X16 130 
#define  P_8X8 129 
#define  P_SKIP 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC8(AVSContext *h, enum cavs_mb mb_type)
{
    GetBitContext *gb = &h->gb;
    int ref[4];

    FUNC2(h);
    switch (mb_type) {
    case P_SKIP:
        FUNC4(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_PSKIP,  BLK_16X16, 0);
        break;
    case P_16X16:
        ref[0] = h->ref_flag ? 0 : FUNC5(gb);
        FUNC4(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_MEDIAN, BLK_16X16, ref[0]);
        break;
    case P_16X8:
        ref[0] = h->ref_flag ? 0 : FUNC5(gb);
        ref[2] = h->ref_flag ? 0 : FUNC5(gb);
        FUNC4(h, MV_FWD_X0, MV_FWD_C2, MV_PRED_TOP,    BLK_16X8, ref[0]);
        FUNC4(h, MV_FWD_X2, MV_FWD_A1, MV_PRED_LEFT,   BLK_16X8, ref[2]);
        break;
    case P_8X16:
        ref[0] = h->ref_flag ? 0 : FUNC5(gb);
        ref[1] = h->ref_flag ? 0 : FUNC5(gb);
        FUNC4(h, MV_FWD_X0, MV_FWD_B3, MV_PRED_LEFT,     BLK_8X16, ref[0]);
        FUNC4(h, MV_FWD_X1, MV_FWD_C2, MV_PRED_TOPRIGHT, BLK_8X16, ref[1]);
        break;
    case P_8X8:
        ref[0] = h->ref_flag ? 0 : FUNC5(gb);
        ref[1] = h->ref_flag ? 0 : FUNC5(gb);
        ref[2] = h->ref_flag ? 0 : FUNC5(gb);
        ref[3] = h->ref_flag ? 0 : FUNC5(gb);
        FUNC4(h, MV_FWD_X0, MV_FWD_B3, MV_PRED_MEDIAN,   BLK_8X8, ref[0]);
        FUNC4(h, MV_FWD_X1, MV_FWD_C2, MV_PRED_MEDIAN,   BLK_8X8, ref[1]);
        FUNC4(h, MV_FWD_X2, MV_FWD_X1, MV_PRED_MEDIAN,   BLK_8X8, ref[2]);
        FUNC4(h, MV_FWD_X3, MV_FWD_X0, MV_PRED_MEDIAN,   BLK_8X8, ref[3]);
    }
    FUNC3(h, mb_type);
    FUNC6(h);
    FUNC7(h);
    if (mb_type != P_SKIP)
        FUNC0(h);
    FUNC1(h, mb_type);
    h->col_type_base[h->mbidx] = mb_type;
}