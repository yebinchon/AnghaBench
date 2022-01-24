#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_4__ {int /*<<< orphan*/  tuner_fd; int /*<<< orphan*/  video_fd; } ;
typedef  TYPE_1__ VideoData ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AUDIO_MUTE ; 
 int /*<<< orphan*/  BT848_SAUDIO ; 
 int /*<<< orphan*/  METEORCAPTUR ; 
 int METEOR_CAP_STOP_CONT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ video_buf ; 
 int /*<<< orphan*/  video_buf_size ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s1)
{
    VideoData *s = s1->priv_data;
    int c;

    c = METEOR_CAP_STOP_CONT;
    FUNC1(s->video_fd, METEORCAPTUR, &c);
    FUNC0(s->video_fd);

    c = AUDIO_MUTE;
    FUNC1(s->tuner_fd, BT848_SAUDIO, &c);
    FUNC0(s->tuner_fd);

    FUNC2((caddr_t)video_buf, video_buf_size);

    return 0;
}