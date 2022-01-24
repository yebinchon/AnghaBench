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
typedef  scalar_t__ uint64_t ;
struct TYPE_5__ {int size; void** data; } ;
struct TYPE_4__ {TYPE_3__* buf_ref; } ;
typedef  TYPE_1__ H264SEIA53Caption ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ const INT_MAX ; 
 int FUNC1 (int) ; 
 int FUNC2 (TYPE_3__**,scalar_t__ const) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(H264SEIA53Caption *h,
                                                     GetBitContext *gb, void *logctx,
                                                     int size)
{
    int flag;
    int user_data_type_code;
    int cc_count;

    if (size < 3)
        return FUNC0(EINVAL);

    user_data_type_code = FUNC3(gb, 8);
    if (user_data_type_code == 0x3) {
        FUNC4(gb, 1);           // reserved

        flag = FUNC3(gb, 1);     // process_cc_data_flag
        if (flag) {
            FUNC4(gb, 1);       // zero bit
            cc_count = FUNC3(gb, 5);
            FUNC4(gb, 8);       // reserved
            size -= 2;

            if (cc_count && size >= cc_count * 3) {
                int old_size = h->buf_ref ? h->buf_ref->size : 0;
                const uint64_t new_size = (old_size + cc_count
                                           * FUNC1(3));
                int i, ret;

                if (new_size > INT_MAX)
                    return FUNC0(EINVAL);

                /* Allow merging of the cc data from two fields. */
                ret = FUNC2(&h->buf_ref, new_size);
                if (ret < 0)
                    return ret;

                /* Use of av_buffer_realloc assumes buffer is writeable */
                for (i = 0; i < cc_count; i++) {
                    h->buf_ref->data[old_size++] = FUNC3(gb, 8);
                    h->buf_ref->data[old_size++] = FUNC3(gb, 8);
                    h->buf_ref->data[old_size++] = FUNC3(gb, 8);
                }

                FUNC4(gb, 8);   // marker_bits
            }
        }
    } else {
        int i;
        for (i = 0; i < size - 1; i++)
            FUNC4(gb, 8);
    }

    return 0;
}