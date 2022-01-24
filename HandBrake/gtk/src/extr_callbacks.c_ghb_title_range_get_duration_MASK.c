#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int den; int num; } ;
struct TYPE_6__ {TYPE_1__ vrate; } ;
typedef  TYPE_2__ hb_title_t ;
typedef  int gint64 ;
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int FUNC0 (TYPE_2__ const*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 

gint64
FUNC3(GhbValue * settings, const hb_title_t * title)
{
    gint64 start, end;

    if (FUNC2(settings, "PtoPType") == 0)
    {
        start = FUNC1(settings, "start_point");
        end = FUNC1(settings, "end_point");
        return FUNC0(title, start, end) / 90000;
    }
    else if (FUNC2(settings, "PtoPType") == 1)
    {
        start = FUNC1(settings, "start_point");
        end = FUNC1(settings, "end_point");
        return end - start;
    }
    else if (FUNC2(settings, "PtoPType") == 2)
    {
        if (title != NULL)
        {
            gint64 frames;

            start = FUNC1(settings, "start_point");
            end = FUNC1(settings, "end_point");
            frames = end - start + 1;
            return frames * title->vrate.den / title->vrate.num;
        }
        else
        {
            return 0;
        }
    }
    return 0;
}