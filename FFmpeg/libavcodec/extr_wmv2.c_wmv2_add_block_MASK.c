#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_6__ {int /*<<< orphan*/  (* idct_add ) (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  (* clear_block ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {scalar_t__* block_last_index; int /*<<< orphan*/  avctx; TYPE_2__ bdsp; } ;
struct TYPE_8__ {int* abt_type_table; int /*<<< orphan*/ ** abt_block2; TYPE_1__ wdsp; TYPE_4__ s; } ;
typedef  TYPE_3__ Wmv2Context ;
typedef  TYPE_4__ MpegEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(Wmv2Context *w, int16_t *block1,
                           uint8_t *dst, int stride, int n)
{
    MpegEncContext *const s = &w->s;

    if (s->block_last_index[n] >= 0) {
        switch (w->abt_type_table[n]) {
        case 0:
            w->wdsp.idct_add(dst, stride, block1);
            break;
        case 1:
            FUNC2(dst, stride, block1);
            FUNC2(dst + 4 * stride, stride, w->abt_block2[n]);
            s->bdsp.clear_block(w->abt_block2[n]);
            break;
        case 2:
            FUNC1(dst, stride, block1);
            FUNC1(dst + 4, stride, w->abt_block2[n]);
            s->bdsp.clear_block(w->abt_block2[n]);
            break;
        default:
            FUNC0(s->avctx, AV_LOG_ERROR, "internal error in WMV2 abt\n");
        }
    }
}