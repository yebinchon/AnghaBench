#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_3__ {int mb_stride; int mb_height; int mb_width; void* ref_index_pool; void* motion_val_pool; void* mb_type_pool; void* qscale_table_pool; } ;
typedef  TYPE_1__ H264Context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  av_buffer_allocz ; 
 void* FUNC1 (int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void**) ; 

__attribute__((used)) static int FUNC3(H264Context *h)
{
    const int big_mb_num    = h->mb_stride * (h->mb_height + 1) + 1;
    const int mb_array_size = h->mb_stride * h->mb_height;
    const int b4_stride     = h->mb_width * 4 + 1;
    const int b4_array_size = b4_stride * h->mb_height * 4;

    h->qscale_table_pool = FUNC1(big_mb_num + h->mb_stride,
                                               av_buffer_allocz);
    h->mb_type_pool      = FUNC1((big_mb_num + h->mb_stride) *
                                               sizeof(uint32_t), av_buffer_allocz);
    h->motion_val_pool   = FUNC1(2 * (b4_array_size + 4) *
                                               sizeof(int16_t), av_buffer_allocz);
    h->ref_index_pool    = FUNC1(4 * mb_array_size, av_buffer_allocz);

    if (!h->qscale_table_pool || !h->mb_type_pool || !h->motion_val_pool ||
        !h->ref_index_pool) {
        FUNC2(&h->qscale_table_pool);
        FUNC2(&h->mb_type_pool);
        FUNC2(&h->motion_val_pool);
        FUNC2(&h->ref_index_pool);
        return FUNC0(ENOMEM);
    }

    return 0;
}