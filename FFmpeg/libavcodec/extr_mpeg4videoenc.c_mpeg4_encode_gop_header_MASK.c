#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_15__ {int /*<<< orphan*/  pb; TYPE_6__* avctx; void* last_time_base; TYPE_4__** reordered_input_picture; TYPE_2__* current_picture_ptr; } ;
struct TYPE_13__ {int num; int den; } ;
struct TYPE_14__ {int flags; TYPE_5__ time_base; } ;
struct TYPE_12__ {TYPE_3__* f; } ;
struct TYPE_11__ {int /*<<< orphan*/  pts; } ;
struct TYPE_10__ {TYPE_1__* f; } ;
struct TYPE_9__ {int pts; } ;
typedef  TYPE_7__ MpegEncContext ;

/* Variables and functions */
 int AV_CODEC_FLAG_CLOSED_GOP ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int GOP_STARTCODE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC5(MpegEncContext *s)
{
    int64_t hours, minutes, seconds;
    int64_t time;

    FUNC4(&s->pb, 16, 0);
    FUNC4(&s->pb, 16, GOP_STARTCODE);

    time = s->current_picture_ptr->f->pts;
    if (s->reordered_input_picture[1])
        time = FUNC0(time, s->reordered_input_picture[1]->f->pts);
    time = time * s->avctx->time_base.num;
    s->last_time_base = FUNC1(time, s->avctx->time_base.den);

    seconds = FUNC1(time, s->avctx->time_base.den);
    minutes = FUNC1(seconds, 60); seconds = FUNC2(seconds, 60);
    hours   = FUNC1(minutes, 60); minutes = FUNC2(minutes, 60);
    hours   = FUNC2(hours  , 24);

    FUNC4(&s->pb, 5, hours);
    FUNC4(&s->pb, 6, minutes);
    FUNC4(&s->pb, 1, 1);
    FUNC4(&s->pb, 6, seconds);

    FUNC4(&s->pb, 1, !!(s->avctx->flags & AV_CODEC_FLAG_CLOSED_GOP));
    FUNC4(&s->pb, 1, 0);  // broken link == NO

    FUNC3(&s->pb);
}