#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int diff_lines; int diff_blocks; int block_height; int comp_size; int tot_blocks; double rows; double cols; double image_height; } ;
typedef  TYPE_1__ FlashSV2Context ;

/* Variables and functions */
 int FUNC0 (int,int,int) ; 
 double block_size_fraction ; 
 int FUNC1 (int,double) ; 
 double FUNC2 (double) ; 

__attribute__((used)) static int FUNC3(FlashSV2Context * s)
{
#ifndef FLASHSV2_DUMB
    double save = (1-FUNC1(s->diff_lines/s->diff_blocks/s->block_height, 0.5)) * s->comp_size/s->tot_blocks;
    double height = block_size_fraction * FUNC2(0.5 * save * s->rows * s->cols) * s->image_height;
    int pheight = ((int) height);
    return FUNC0(pheight & ~15, 256, 16);
#else
    return 64;
#endif
}