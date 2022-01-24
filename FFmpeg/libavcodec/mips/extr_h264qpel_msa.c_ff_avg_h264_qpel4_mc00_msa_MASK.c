#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ v16u8 ;
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC3 (TYPE_1__,TYPE_1__) ; 

void FUNC4(uint8_t *dst, const uint8_t *src,
                                ptrdiff_t stride)
{
    uint32_t tp0, tp1, tp2, tp3;
    v16u8 src0 = { 0 }, dst0 = { 0 };

    FUNC1(src, stride, tp0, tp1, tp2, tp3);
    FUNC0(tp0, tp1, tp2, tp3, src0);
    FUNC1(dst, stride, tp0, tp1, tp2, tp3);
    FUNC0(tp0, tp1, tp2, tp3, dst0);

    dst0 = FUNC3(src0, dst0);

    FUNC2(dst0, 0, 1, 2, 3, dst, stride);
}