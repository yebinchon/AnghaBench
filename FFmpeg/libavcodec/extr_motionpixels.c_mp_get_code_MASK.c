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
struct TYPE_5__ {int max_codes_bits; size_t current_codes_count; TYPE_1__* codes; int /*<<< orphan*/  avctx; } ;
struct TYPE_4__ {int code; int size; } ;
typedef  TYPE_2__ MotionPixelsContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 size_t MAX_HUFF_CODES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(MotionPixelsContext *mp, GetBitContext *gb, int size, int code)
{
    while (FUNC1(gb)) {
        ++size;
        if (size > mp->max_codes_bits) {
            FUNC0(mp->avctx, AV_LOG_ERROR, "invalid code size %d/%d\n", size, mp->max_codes_bits);
            return AVERROR_INVALIDDATA;
        }
        code <<= 1;
        if (FUNC2(mp, gb, size, code + 1) < 0)
            return AVERROR_INVALIDDATA;
    }
    if (mp->current_codes_count >= MAX_HUFF_CODES) {
        FUNC0(mp->avctx, AV_LOG_ERROR, "too many codes\n");
        return AVERROR_INVALIDDATA;
    }

    mp->codes[mp->current_codes_count  ].code = code;
    mp->codes[mp->current_codes_count++].size = size;
    return 0;
}