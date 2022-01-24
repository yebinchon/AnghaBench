#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ end_pts; } ;
struct TYPE_8__ {int nb_filters; TYPE_2__** filters; TYPE_1__ sub2video; } ;
struct TYPE_7__ {int /*<<< orphan*/  filter; } ;
typedef  TYPE_3__ InputStream ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ INT64_MAX ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(InputStream *ist)
{
    int i;
    int ret;

    if (ist->sub2video.end_pts < INT64_MAX)
        FUNC2(ist, NULL);
    for (i = 0; i < ist->nb_filters; i++) {
        ret = FUNC0(ist->filters[i]->filter, NULL);
        if (ret != AVERROR_EOF && ret < 0)
            FUNC1(NULL, AV_LOG_WARNING, "Flush the frame error.\n");
    }
}