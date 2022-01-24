#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int swf_frame_number; int /*<<< orphan*/  video_par; int /*<<< orphan*/  sound_samples; int /*<<< orphan*/  audio_fifo; } ;
typedef  TYPE_1__ SWFContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVCodecParameters ;

/* Variables and functions */
 scalar_t__ AUDIO_FIFO_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s,
                           AVCodecParameters *par, uint8_t *buf, int size)
{
    SWFContext *swf = s->priv_data;

    /* Flash Player limit */
    if (swf->swf_frame_number == 16000)
        FUNC3(s, AV_LOG_INFO, "warning: Flash Player limit of 16000 frames reached\n");

    if (FUNC1(swf->audio_fifo) + size > AUDIO_FIFO_SIZE) {
        FUNC3(s, AV_LOG_ERROR, "audio fifo too small to mux audio essence\n");
        return -1;
    }

    FUNC0(swf->audio_fifo, buf, size, NULL);
    swf->sound_samples += FUNC2(par, size);

    /* if audio only stream make sure we add swf frames */
    if (!swf->video_par)
        FUNC4(s, par, 0, 0);

    return 0;
}