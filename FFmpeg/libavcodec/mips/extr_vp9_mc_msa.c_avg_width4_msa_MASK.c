#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/  const*,int) ; 
 TYPE_1__ FUNC5 (TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC6(const uint8_t *src, int32_t src_stride,
                           uint8_t *dst, int32_t dst_stride,
                           int32_t height)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, src1 = { 0 }, dst0 = { 0 }, dst1 = { 0 };

    if (8 == height) {
        FUNC2(src, src_stride, tp0, tp1, tp2, tp3);
        src += 4 * src_stride;
        FUNC1(tp0, tp1, tp2, tp3, src0);
        FUNC2(src, src_stride, tp0, tp1, tp2, tp3);
        FUNC1(tp0, tp1, tp2, tp3, src1);
        FUNC2(dst, dst_stride, tp0, tp1, tp2, tp3);
        FUNC1(tp0, tp1, tp2, tp3, dst0);
        FUNC2(dst + 4 * dst_stride, dst_stride, tp0, tp1, tp2, tp3);
        FUNC1(tp0, tp1, tp2, tp3, dst1);
        FUNC0(src0, dst0, src1, dst1, dst0, dst1);
        FUNC4(dst0, dst1, 0, 1, 2, 3, 0, 1, 2, 3, dst, dst_stride);
    } else if (4 == height) {
        FUNC2(src, src_stride, tp0, tp1, tp2, tp3);
        FUNC1(tp0, tp1, tp2, tp3, src0);
        FUNC2(dst, dst_stride, tp0, tp1, tp2, tp3);
        FUNC1(tp0, tp1, tp2, tp3, dst0);
        dst0 = FUNC5(src0, dst0);
        FUNC3(dst0, 0, 1, 2, 3, dst, dst_stride);
    }
}