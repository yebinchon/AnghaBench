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
typedef  int /*<<< orphan*/  MpegEncContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,int,int,int,int,int,int) ; 

int FUNC1(MpegEncContext *s, int mx, int my, int src_index,
                    int ref_index, int size, int h, int add_rate)
{
    return FUNC0(s, mx, my, src_index, ref_index, size, h, add_rate);
}