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
typedef  int int16_t ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(int past_onset, const int16_t* past_gain_code)
{
    if ((past_gain_code[0] >> 1) > past_gain_code[1])
        return 2;

    return FUNC0(past_onset-1, 0);
}