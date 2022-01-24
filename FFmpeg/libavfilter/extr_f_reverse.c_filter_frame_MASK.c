#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {TYPE_1__* priv; } ;
struct TYPE_10__ {TYPE_4__* dst; } ;
struct TYPE_9__ {struct TYPE_9__* pts; } ;
struct TYPE_8__ {int nb_frames; int pts_size; int frames_size; TYPE_2__** pts; TYPE_2__** frames; } ;
typedef  TYPE_1__ ReverseContext ;
typedef  TYPE_2__ AVFrame ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC1 (TYPE_2__**,int*,int) ; 

__attribute__((used)) static int FUNC2(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    ReverseContext *s    = ctx->priv;
    void *ptr;

    if (s->nb_frames + 1 > s->pts_size / sizeof(*(s->pts))) {
        ptr = FUNC1(s->pts, &s->pts_size, s->pts_size * 2);
        if (!ptr)
            return FUNC0(ENOMEM);
        s->pts = ptr;
    }

    if (s->nb_frames + 1 > s->frames_size / sizeof(*(s->frames))) {
        ptr = FUNC1(s->frames, &s->frames_size, s->frames_size * 2);
        if (!ptr)
            return FUNC0(ENOMEM);
        s->frames = ptr;
    }

    s->frames[s->nb_frames] = in;
    s->pts[s->nb_frames]    = in->pts;
    s->nb_frames++;

    return 0;
}