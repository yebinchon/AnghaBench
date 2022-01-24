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
typedef  int uint64_t ;

/* Variables and functions */
 int AV_CH_BACK_LEFT ; 
 int AV_CH_BACK_RIGHT ; 
 int AV_CH_FRONT_LEFT ; 
 int AV_CH_FRONT_LEFT_OF_CENTER ; 
 int AV_CH_FRONT_RIGHT ; 
 int AV_CH_FRONT_RIGHT_OF_CENTER ; 
 int AV_CH_LAYOUT_SURROUND ; 
 int AV_CH_SIDE_LEFT ; 
 int AV_CH_SIDE_RIGHT ; 
 int AV_CH_STEREO_LEFT ; 
 int AV_CH_STEREO_RIGHT ; 
 int AV_CH_SURROUND_DIRECT_LEFT ; 
 int AV_CH_SURROUND_DIRECT_RIGHT ; 
 int AV_CH_TOP_BACK_LEFT ; 
 int AV_CH_TOP_BACK_RIGHT ; 
 int AV_CH_TOP_FRONT_LEFT ; 
 int AV_CH_TOP_FRONT_RIGHT ; 
 int AV_CH_WIDE_LEFT ; 
 int AV_CH_WIDE_RIGHT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(uint64_t layout)
{
    /* check that there is at least 1 front speaker */
    if (!(layout & AV_CH_LAYOUT_SURROUND))
        return 0;

    /* check for left/right symmetry */
    if (!FUNC0(layout & (AV_CH_FRONT_LEFT           | AV_CH_FRONT_RIGHT))           ||
        !FUNC0(layout & (AV_CH_SIDE_LEFT            | AV_CH_SIDE_RIGHT))            ||
        !FUNC0(layout & (AV_CH_BACK_LEFT            | AV_CH_BACK_RIGHT))            ||
        !FUNC0(layout & (AV_CH_FRONT_LEFT_OF_CENTER | AV_CH_FRONT_RIGHT_OF_CENTER)) ||
        !FUNC0(layout & (AV_CH_TOP_FRONT_LEFT       | AV_CH_TOP_FRONT_RIGHT))       ||
        !FUNC0(layout & (AV_CH_TOP_BACK_LEFT        | AV_CH_TOP_BACK_RIGHT))        ||
        !FUNC0(layout & (AV_CH_STEREO_LEFT          | AV_CH_STEREO_RIGHT))          ||
        !FUNC0(layout & (AV_CH_WIDE_LEFT            | AV_CH_WIDE_RIGHT))            ||
        !FUNC0(layout & (AV_CH_SURROUND_DIRECT_LEFT | AV_CH_SURROUND_DIRECT_RIGHT)))
        return 0;

    return 1;
}