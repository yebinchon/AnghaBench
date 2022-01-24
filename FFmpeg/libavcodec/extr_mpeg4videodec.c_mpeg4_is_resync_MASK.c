#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int size_in_bits; } ;
struct TYPE_12__ {int workaround_bugs; int pict_type; int mb_num; TYPE_3__ gb; scalar_t__ partitioned_frame; } ;
struct TYPE_13__ {int /*<<< orphan*/  resync_marker; TYPE_1__ m; } ;
typedef  TYPE_1__ MpegEncContext ;
typedef  TYPE_2__ Mpeg4DecContext ;
typedef  TYPE_3__ GetBitContext ;

/* Variables and functions */
 int AV_PICTURE_TYPE_B ; 
 int FF_BUG_NO_PADDING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_1__*) ; 
 int* ff_mpeg4_resync_prefix ; 
 int FUNC3 (TYPE_3__*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int FUNC5 (TYPE_3__*) ; 
 int FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 

__attribute__((used)) static inline int FUNC8(Mpeg4DecContext *ctx)
{
    MpegEncContext *s = &ctx->m;
    int bits_count = FUNC5(&s->gb);
    int v          = FUNC6(&s->gb, 16);

    if (s->workaround_bugs & FF_BUG_NO_PADDING && !ctx->resync_marker)
        return 0;

    while (v <= 0xFF) {
        if (s->pict_type == AV_PICTURE_TYPE_B ||
            (v >> (8 - s->pict_type) != 1) || s->partitioned_frame)
            break;
        FUNC7(&s->gb, 8 + s->pict_type);
        bits_count += 8 + s->pict_type;
        v = FUNC6(&s->gb, 16);
    }

    if (bits_count + 8 >= s->gb.size_in_bits) {
        v >>= 8;
        v  |= 0x7F >> (7 - (bits_count & 7));

        if (v == 0x7F)
            return s->mb_num;
    } else {
        if (v == ff_mpeg4_resync_prefix[bits_count & 7]) {
            int len, mb_num;
            int mb_num_bits = FUNC1(s->mb_num - 1) + 1;
            GetBitContext gb = s->gb;

            FUNC7(&s->gb, 1);
            FUNC0(&s->gb);

            for (len = 0; len < 32; len++)
                if (FUNC4(&s->gb))
                    break;

            mb_num = FUNC3(&s->gb, mb_num_bits);
            if (!mb_num || mb_num > s->mb_num || FUNC5(&s->gb)+6 > s->gb.size_in_bits)
                mb_num= -1;

            s->gb = gb;

            if (len >= FUNC2(s))
                return mb_num;
        }
    }
    return 0;
}