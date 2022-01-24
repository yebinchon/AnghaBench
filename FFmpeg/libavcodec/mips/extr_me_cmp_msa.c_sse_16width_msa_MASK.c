#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v4i32 ;
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC3(uint8_t *src_ptr, int32_t src_stride,
                                uint8_t *ref_ptr, int32_t ref_stride,
                                int32_t height)
{
    int32_t ht_cnt;
    uint32_t sse;
    v16u8 src, ref;
    v4i32 var = { 0 };

    for (ht_cnt = (height >> 2); ht_cnt--;) {
        src = FUNC2(src_ptr);
        src_ptr += src_stride;
        ref = FUNC2(ref_ptr);
        ref_ptr += ref_stride;
        FUNC0(src, ref, var);

        src = FUNC2(src_ptr);
        src_ptr += src_stride;
        ref = FUNC2(ref_ptr);
        ref_ptr += ref_stride;
        FUNC0(src, ref, var);

        src = FUNC2(src_ptr);
        src_ptr += src_stride;
        ref = FUNC2(ref_ptr);
        ref_ptr += ref_stride;
        FUNC0(src, ref, var);

        src = FUNC2(src_ptr);
        src_ptr += src_stride;
        ref = FUNC2(ref_ptr);
        ref_ptr += ref_stride;
        FUNC0(src, ref, var);
    }

    sse = FUNC1(var);

    return sse;
}