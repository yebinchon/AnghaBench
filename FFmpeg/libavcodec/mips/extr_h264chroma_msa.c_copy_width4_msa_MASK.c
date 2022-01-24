#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(uint8_t *src, uint8_t *dst, int32_t stride,
                            int32_t height)
{
    uint32_t tp0, tp1, tp2, tp3, tp4, tp5, tp6, tp7;

    if (8 == height) {
        FUNC1(src, stride, tp0, tp1, tp2, tp3);
        src += 4 * stride;
        FUNC1(src, stride, tp4, tp5, tp6, tp7);
        FUNC3(tp0, tp1, tp2, tp3, dst, stride);
        dst += 4 * stride;
        FUNC3(tp4, tp5, tp6, tp7, dst, stride);
    } else if (4 == height) {
        FUNC1(src, stride, tp0, tp1, tp2, tp3);
        FUNC3(tp0, tp1, tp2, tp3, dst, stride);
    } else if (2 == height) {
        FUNC0(src, stride, tp0, tp1);
        FUNC2(tp0, dst);
        dst += stride;
        FUNC2(tp1, dst);
    }
}