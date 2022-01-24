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
struct TYPE_8__ {int nb_samples; int pts; struct TYPE_8__* next; } ;
struct TYPE_7__ {int nb_samples; int /*<<< orphan*/  nb_frames; int /*<<< orphan*/ * end; TYPE_2__* list; } ;
typedef  TYPE_1__ FrameList ;
typedef  TYPE_2__ FrameInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC3(FrameList *frame_list, int nb_samples)
{
    if (nb_samples >= frame_list->nb_samples) {
        FUNC2(frame_list);
    } else {
        int samples = nb_samples;
        while (samples > 0) {
            FrameInfo *info = frame_list->list;
            FUNC0(info);
            if (info->nb_samples <= samples) {
                samples -= info->nb_samples;
                frame_list->list = info->next;
                if (!frame_list->list)
                    frame_list->end = NULL;
                frame_list->nb_frames--;
                frame_list->nb_samples -= info->nb_samples;
                FUNC1(info);
            } else {
                info->nb_samples       -= samples;
                info->pts              += samples;
                frame_list->nb_samples -= samples;
                samples = 0;
            }
        }
    }
}