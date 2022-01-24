#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ snd_pcm_sframes_t ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; int /*<<< orphan*/  pts; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {int period_size; int frame_size; int last_period; int /*<<< orphan*/  timefilter; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  h; } ;
typedef  TYPE_1__ AlsaData ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int EAGAIN ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s1, AVPacket *pkt)
{
    AlsaData *s  = s1->priv_data;
    int res;
    int64_t dts;
    snd_pcm_sframes_t delay = 0;

    if (FUNC3(pkt, s->period_size * s->frame_size) < 0) {
        return FUNC0(EIO);
    }

    while ((res = FUNC10(s->h, pkt->data, s->period_size)) < 0) {
        if (res == -EAGAIN) {
            FUNC4(pkt);

            return FUNC0(EAGAIN);
        }
        if (FUNC6(s1, res) < 0) {
            FUNC2(s1, AV_LOG_ERROR, "ALSA read error: %s\n",
                   FUNC11(res));
            FUNC4(pkt);

            return FUNC0(EIO);
        }
        FUNC7(s->timefilter);
    }

    dts = FUNC1();
    FUNC9(s->h, &delay);
    dts -= FUNC5(delay + res, 1000000, s->sample_rate);
    pkt->pts = FUNC8(s->timefilter, dts, s->last_period);
    s->last_period = res;

    pkt->size = res * s->frame_size;

    return 0;
}