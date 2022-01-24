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
typedef  int /*<<< orphan*/  v16u8 ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC3(uint8_t *src, int32_t stride)
{
    uint32_t sum = 0;
    v16u8 in0, in1, in2, in3, in4, in5, in6, in7;
    v16u8 in8, in9, in10, in11, in12, in13, in14, in15;

    FUNC2(src, stride, in0, in1, in2, in3, in4, in5, in6, in7);
    src += (8 * stride);
    FUNC2(src, stride, in8, in9, in10, in11, in12, in13, in14, in15);

    FUNC0(in0, in1, in2, in3, in0, in1, in2, in3);
    FUNC0(in4, in5, in6, in7, in4, in5, in6, in7);
    FUNC0(in8, in9, in10, in11, in8, in9, in10, in11);
    FUNC0(in12, in13, in14, in15, in12, in13, in14, in15);

    sum = FUNC1(in0);
    sum += FUNC1(in1);
    sum += FUNC1(in2);
    sum += FUNC1(in3);
    sum += FUNC1(in4);
    sum += FUNC1(in5);
    sum += FUNC1(in6);
    sum += FUNC1(in7);
    sum += FUNC1(in8);
    sum += FUNC1(in9);
    sum += FUNC1(in10);
    sum += FUNC1(in11);
    sum += FUNC1(in12);
    sum += FUNC1(in13);
    sum += FUNC1(in14);
    sum += FUNC1(in15);

    return sum;
}