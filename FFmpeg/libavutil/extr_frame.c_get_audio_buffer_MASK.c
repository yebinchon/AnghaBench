#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {struct TYPE_9__* data; } ;
struct TYPE_8__ {int channels; int nb_extended_buf; TYPE_4__** extended_buf; TYPE_4__** extended_data; int /*<<< orphan*/ * linesize; TYPE_1__** buf; TYPE_4__** data; int /*<<< orphan*/  format; int /*<<< orphan*/  nb_samples; int /*<<< orphan*/  channel_layout; } ;
struct TYPE_7__ {TYPE_4__* data; } ;
typedef  TYPE_2__ AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_NUM_DATA_POINTERS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC2 (int,int) ; 
 void* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__***) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 void* FUNC7 (int,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10(AVFrame *frame, int align)
{
    int channels;
    int planar   = FUNC8(frame->format);
    int planes;
    int ret, i;

    if (!frame->channels)
        frame->channels = FUNC6(frame->channel_layout);

    channels = frame->channels;
    planes = planar ? channels : 1;

    FUNC1(frame);
    if (!frame->linesize[0]) {
        ret = FUNC9(&frame->linesize[0], channels,
                                         frame->nb_samples, frame->format,
                                         align);
        if (ret < 0)
            return ret;
    }

    if (planes > AV_NUM_DATA_POINTERS) {
        frame->extended_data = FUNC7(planes,
                                          sizeof(*frame->extended_data));
        frame->extended_buf  = FUNC7((planes - AV_NUM_DATA_POINTERS),
                                          sizeof(*frame->extended_buf));
        if (!frame->extended_data || !frame->extended_buf) {
            FUNC5(&frame->extended_data);
            FUNC5(&frame->extended_buf);
            return FUNC0(ENOMEM);
        }
        frame->nb_extended_buf = planes - AV_NUM_DATA_POINTERS;
    } else
        frame->extended_data = frame->data;

    for (i = 0; i < FUNC2(planes, AV_NUM_DATA_POINTERS); i++) {
        frame->buf[i] = FUNC3(frame->linesize[0]);
        if (!frame->buf[i]) {
            FUNC4(frame);
            return FUNC0(ENOMEM);
        }
        frame->extended_data[i] = frame->data[i] = frame->buf[i]->data;
    }
    for (i = 0; i < planes - AV_NUM_DATA_POINTERS; i++) {
        frame->extended_buf[i] = FUNC3(frame->linesize[0]);
        if (!frame->extended_buf[i]) {
            FUNC4(frame);
            return FUNC0(ENOMEM);
        }
        frame->extended_data[i + AV_NUM_DATA_POINTERS] = frame->extended_buf[i]->data;
    }
    return 0;

}