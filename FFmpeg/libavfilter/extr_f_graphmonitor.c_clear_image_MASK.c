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
struct TYPE_6__ {int height; int width; int* linesize; scalar_t__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  bg; } ;
typedef  TYPE_1__ GraphMonitorContext ;
typedef  TYPE_2__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterLink ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC2(GraphMonitorContext *s, AVFrame *out, AVFilterLink *outlink)
{
    int bg = FUNC0(s->bg);

    for (int i = 0; i < out->height; i++)
        for (int j = 0; j < out->width; j++)
            FUNC1(out->data[0] + i * out->linesize[0] + j * 4, bg);
}