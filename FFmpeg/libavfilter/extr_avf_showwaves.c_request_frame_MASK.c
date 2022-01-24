#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* src; } ;
struct TYPE_9__ {scalar_t__ single_pic; scalar_t__ outpicref; } ;
struct TYPE_8__ {TYPE_3__** inputs; TYPE_2__* priv; } ;
typedef  TYPE_2__ ShowWavesContext ;
typedef  TYPE_3__ AVFilterLink ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC3(AVFilterLink *outlink)
{
    ShowWavesContext *showwaves = outlink->src->priv;
    AVFilterLink *inlink = outlink->src->inputs[0];
    int ret;

    ret = FUNC0(inlink);
    if (ret == AVERROR_EOF && showwaves->outpicref) {
        if (showwaves->single_pic)
            FUNC2(outlink);
        else
            FUNC1(outlink);
    }

    return ret;
}