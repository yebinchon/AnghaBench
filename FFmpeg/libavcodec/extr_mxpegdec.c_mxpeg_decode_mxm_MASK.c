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
typedef  int uint8_t ;
struct TYPE_4__ {int /*<<< orphan*/  avctx; } ;
struct TYPE_5__ {unsigned int mb_width; unsigned int mb_height; unsigned int bitmask_size; int* mxm_bitmask; int* completion_bitmask; int got_mxm_bitmask; int has_complete_frame; TYPE_1__ jpg; } ;
typedef  TYPE_2__ MXpegDecodeContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC1 (int const*) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int* FUNC4 (unsigned int) ; 
 int* FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int*,int const*,unsigned int) ; 

__attribute__((used)) static int FUNC7(MXpegDecodeContext *s,
                            const uint8_t *buf_ptr, int buf_size)
{
    unsigned bitmask_size, mb_count;
    int i;

    s->mb_width  = FUNC1(buf_ptr+4);
    s->mb_height = FUNC1(buf_ptr+6);
    mb_count = s->mb_width * s->mb_height;

    bitmask_size = (mb_count + 7) >> 3;
    if (bitmask_size > buf_size - 12) {
        FUNC3(s->jpg.avctx, AV_LOG_ERROR,
               "MXM bitmask is not complete\n");
        return FUNC0(EINVAL);
    }

    if (s->bitmask_size != bitmask_size) {
        s->bitmask_size = 0;
        FUNC2(&s->mxm_bitmask);
        s->mxm_bitmask = FUNC4(bitmask_size);
        if (!s->mxm_bitmask) {
            FUNC3(s->jpg.avctx, AV_LOG_ERROR,
                   "MXM bitmask memory allocation error\n");
            return FUNC0(ENOMEM);
        }

        FUNC2(&s->completion_bitmask);
        s->completion_bitmask = FUNC5(bitmask_size);
        if (!s->completion_bitmask) {
            FUNC3(s->jpg.avctx, AV_LOG_ERROR,
                   "Completion bitmask memory allocation error\n");
            return FUNC0(ENOMEM);
        }

        s->bitmask_size = bitmask_size;
    }

    FUNC6(s->mxm_bitmask, buf_ptr + 12, bitmask_size);
    s->got_mxm_bitmask = 1;

    if (!s->has_complete_frame) {
        uint8_t completion_check = 0xFF;
        for (i = 0; i < bitmask_size; ++i) {
            s->completion_bitmask[i] |= s->mxm_bitmask[i];
            completion_check &= s->completion_bitmask[i];
        }
        s->has_complete_frame = !(completion_check ^ 0xFF);
    }

    return 0;
}