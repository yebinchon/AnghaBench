#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {struct TYPE_8__* keyframe_pts; } ;
struct TYPE_7__ {int nb_streams; TYPE_1__* priv_data; } ;
struct TYPE_6__ {TYPE_5__* time_base; TYPE_5__* chapter; TYPE_5__* stream; } ;
typedef  TYPE_1__ NUTContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s)
{
    NUTContext *nut = s->priv_data;
    int i;

    FUNC1(nut);
    if (nut->stream)
        for (i=0; i<s->nb_streams; i++)
            FUNC0(&nut->stream[i].keyframe_pts);

    FUNC0(&nut->stream);
    FUNC0(&nut->chapter);
    FUNC0(&nut->time_base);
}