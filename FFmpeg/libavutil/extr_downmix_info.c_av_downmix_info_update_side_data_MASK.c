#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ data; } ;
typedef  TYPE_1__ AVFrameSideData ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVDownmixInfo ;

/* Variables and functions */
 int /*<<< orphan*/  AV_FRAME_DATA_DOWNMIX_INFO ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

AVDownmixInfo *FUNC2(AVFrame *frame)
{
    AVFrameSideData *side_data;

    side_data = FUNC0(frame, AV_FRAME_DATA_DOWNMIX_INFO);

    if (!side_data)
        side_data = FUNC1(frame, AV_FRAME_DATA_DOWNMIX_INFO,
                                           sizeof(AVDownmixInfo));

    if (!side_data)
        return NULL;

    return (AVDownmixInfo*)side_data->data;
}