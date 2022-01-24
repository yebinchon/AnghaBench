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
typedef  int /*<<< orphan*/  int8_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static void FUNC4(uint8_t *src,
                              int32_t src_stride,
                              int16_t *dst,
                              int32_t dst_stride,
                              const int8_t *filter_x,
                              const int8_t *filter_y,
                              int32_t height)
{

    if (2 == height) {
        FUNC2(src, src_stride, dst, dst_stride,
                           filter_x, filter_y);
    } else if (4 == height) {
        FUNC0(src, src_stride, dst, dst_stride,
                               filter_x, filter_y, 1);
    } else if (6 == height) {
        FUNC3(src, src_stride, dst, dst_stride,
                           filter_x, filter_y);
    } else if (0 == (height % 4)) {
        FUNC1(src, src_stride, dst, dst_stride,
                                   filter_x, filter_y, height, 1);
    }
}