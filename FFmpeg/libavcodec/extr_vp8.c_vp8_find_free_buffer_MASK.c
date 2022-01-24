#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {TYPE_1__* f; } ;
struct TYPE_11__ {TYPE_2__ tf; } ;
typedef  TYPE_3__ VP8Frame ;
struct TYPE_12__ {int /*<<< orphan*/  avctx; TYPE_3__* frames; TYPE_3__** framep; } ;
typedef  TYPE_4__ VP8Context ;
struct TYPE_9__ {scalar_t__* buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 size_t VP56_FRAME_CURRENT ; 
 size_t VP56_FRAME_GOLDEN ; 
 size_t VP56_FRAME_GOLDEN2 ; 
 size_t VP56_FRAME_PREVIOUS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static VP8Frame *FUNC3(VP8Context *s)
{
    VP8Frame *frame = NULL;
    int i;

    // find a free buffer
    for (i = 0; i < 5; i++)
        if (&s->frames[i] != s->framep[VP56_FRAME_CURRENT]  &&
            &s->frames[i] != s->framep[VP56_FRAME_PREVIOUS] &&
            &s->frames[i] != s->framep[VP56_FRAME_GOLDEN]   &&
            &s->frames[i] != s->framep[VP56_FRAME_GOLDEN2]) {
            frame = &s->frames[i];
            break;
        }
    if (i == 5) {
        FUNC1(s->avctx, AV_LOG_FATAL, "Ran out of free frames!\n");
        FUNC0();
    }
    if (frame->tf.f->buf[0])
        FUNC2(s, frame);

    return frame;
}