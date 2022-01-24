#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int codes_count; int current_codes_count; int /*<<< orphan*/  avctx; TYPE_1__* codes; void* max_codes_bits; } ;
struct TYPE_5__ {void* delta; } ;
typedef  TYPE_2__ MotionPixelsContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(MotionPixelsContext *mp, GetBitContext *gb)
{
    if (mp->codes_count == 1) {
        mp->codes[0].delta = FUNC1(gb, 4);
    } else {
        int i;
        int ret;

        mp->max_codes_bits = FUNC1(gb, 4);
        for (i = 0; i < mp->codes_count; ++i)
            mp->codes[i].delta = FUNC1(gb, 4);
        mp->current_codes_count = 0;
        if ((ret = FUNC2(mp, gb, 0, 0)) < 0)
            return ret;
        if (mp->current_codes_count < mp->codes_count) {
            FUNC0(mp->avctx, AV_LOG_ERROR, "too few codes\n");
            return AVERROR_INVALIDDATA;
        }
   }
   return 0;
}