#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/  const*,int) ; 

void FUNC4(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint64_t tp0, tp1, tp2, tp3, tp4, tp5, tp6, tp7;
    v16u8 src0 = { 0 }, src1 = { 0 }, src2 = { 0 }, src3 = { 0 };
    v16u8 dst0 = { 0 }, dst1 = { 0 }, dst2 = { 0 }, dst3 = { 0 };

    FUNC2(src, stride, tp0, tp1, tp2, tp3);
    src += 4 * stride;
    FUNC2(src, stride, tp4, tp5, tp6, tp7);
    FUNC1(tp0, tp1, src0);
    FUNC1(tp2, tp3, src1);
    FUNC1(tp4, tp5, src2);
    FUNC1(tp6, tp7, src3);

    FUNC2(dst, stride, tp0, tp1, tp2, tp3);
    FUNC2(dst + 4 * stride, stride, tp4, tp5, tp6, tp7);
    FUNC1(tp0, tp1, dst0);
    FUNC1(tp2, tp3, dst1);
    FUNC1(tp4, tp5, dst2);
    FUNC1(tp6, tp7, dst3);

    FUNC0(src0, dst0, src1, dst1, src2, dst2, src3, dst3, dst0, dst1,
                dst2, dst3);

    FUNC3(dst0, dst1, dst2, dst3, 0, 1, 0, 1, 0, 1, 0, 1, dst, stride);
}