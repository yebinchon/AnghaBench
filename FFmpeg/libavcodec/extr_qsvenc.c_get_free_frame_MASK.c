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
typedef  int /*<<< orphan*/  mfxPayload ;
struct TYPE_10__ {TYPE_2__* work_frames; } ;
struct TYPE_8__ {void* Payload; } ;
struct TYPE_9__ {int used; TYPE_1__ enc_ctrl; int /*<<< orphan*/  frame; struct TYPE_9__* next; } ;
typedef  TYPE_2__ QSVFrame ;
typedef  TYPE_3__ QSVEncContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int QSV_MAX_ENC_PAYLOAD ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**) ; 
 void* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 

__attribute__((used)) static int FUNC5(QSVEncContext *q, QSVFrame **f)
{
    QSVFrame *frame, **last;

    FUNC4(q);

    frame = q->work_frames;
    last  = &q->work_frames;
    while (frame) {
        if (!frame->used) {
            *f = frame;
            frame->used = 1;
            return 0;
        }

        last  = &frame->next;
        frame = frame->next;
    }

    frame = FUNC3(sizeof(*frame));
    if (!frame)
        return FUNC0(ENOMEM);
    frame->frame = FUNC1();
    if (!frame->frame) {
        FUNC2(&frame);
        return FUNC0(ENOMEM);
    }
    frame->enc_ctrl.Payload = FUNC3(sizeof(mfxPayload*) * QSV_MAX_ENC_PAYLOAD);
    if (!frame->enc_ctrl.Payload) {
        FUNC2(&frame);
        return FUNC0(ENOMEM);
    }
    *last = frame;

    *f = frame;
    frame->used = 1;

    return 0;
}