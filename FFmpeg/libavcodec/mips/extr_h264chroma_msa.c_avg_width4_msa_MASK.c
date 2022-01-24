#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ *,int) ; 
 TYPE_1__ FUNC8 (TYPE_1__,TYPE_1__) ; 

__attribute__((used)) static void FUNC9(uint8_t *src, uint8_t *dst, int32_t stride,
                           int32_t height)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, src1 = { 0 }, dst0 = { 0 }, dst1 = { 0 };

    if (8 == height) {
        FUNC4(src, stride, tp0, tp1, tp2, tp3);
        src += 4 * stride;
        FUNC2(tp0, tp1, tp2, tp3, src0);
        FUNC4(src, stride, tp0, tp1, tp2, tp3);
        FUNC2(tp0, tp1, tp2, tp3, src1);
        FUNC4(dst, stride, tp0, tp1, tp2, tp3);
        FUNC2(tp0, tp1, tp2, tp3, dst0);
        FUNC4(dst + 4 * stride, stride, tp0, tp1, tp2, tp3);
        FUNC2(tp0, tp1, tp2, tp3, dst1);
        FUNC0(src0, dst0, src1, dst1, dst0, dst1);
        FUNC7(dst0, dst1, 0, 1, 2, 3, 0, 1, 2, 3, dst, stride);
    } else if (4 == height) {
        FUNC4(src, stride, tp0, tp1, tp2, tp3);
        FUNC2(tp0, tp1, tp2, tp3, src0);
        FUNC4(dst, stride, tp0, tp1, tp2, tp3);
        FUNC2(tp0, tp1, tp2, tp3, dst0);
        dst0 = FUNC8(src0, dst0);
        FUNC6(dst0, 0, 1, 2, 3, dst, stride);
    } else if (2 == height) {
        FUNC3(src, stride, tp0, tp1);
        FUNC1(tp0, tp1, src0);
        FUNC3(dst, stride, tp0, tp1);
        FUNC1(tp0, tp1, dst0);
        dst0 = FUNC8(src0, dst0);
        FUNC5(dst0, 0, 1, dst, stride);
    }
}