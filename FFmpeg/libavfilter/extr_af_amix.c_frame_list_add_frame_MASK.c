#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int nb_samples; struct TYPE_7__* next; int /*<<< orphan*/  pts; } ;
struct TYPE_6__ {int nb_samples; int /*<<< orphan*/  nb_frames; TYPE_2__* end; TYPE_2__* list; } ;
typedef  TYPE_1__ FrameList ;
typedef  TYPE_2__ FrameInfo ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(FrameList *frame_list, int nb_samples, int64_t pts)
{
    FrameInfo *info = FUNC2(sizeof(*info));
    if (!info)
        return FUNC0(ENOMEM);
    info->nb_samples = nb_samples;
    info->pts        = pts;
    info->next       = NULL;

    if (!frame_list->list) {
        frame_list->list = info;
        frame_list->end  = info;
    } else {
        FUNC1(frame_list->end);
        frame_list->end->next = info;
        frame_list->end       = info;
    }
    frame_list->nb_frames++;
    frame_list->nb_samples += nb_samples;

    return 0;
}