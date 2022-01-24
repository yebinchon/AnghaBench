#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* dstpad; } ;
struct TYPE_7__ {int /*<<< orphan*/ * (* get_video_buffer ) (TYPE_2__*,int,int) ;} ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_2__ AVFilterLink ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  get_video_buffer ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__*,int,int) ; 

AVFrame *FUNC4(AVFilterLink *link, int w, int h)
{
    AVFrame *ret = NULL;

    FUNC0(NULL, get_video_buffer); FUNC2(NULL, link, 0);

    if (link->dstpad->get_video_buffer)
        ret = link->dstpad->get_video_buffer(link, w, h);

    if (!ret)
        ret = FUNC1(link, w, h);

    return ret;
}