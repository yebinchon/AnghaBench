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
typedef  int int64_t ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int pts; int /*<<< orphan*/  data; } ;
struct TYPE_8__ {int softpos; int hwpos; int bps; int channels; int sample_rate; int /*<<< orphan*/  hdl; int /*<<< orphan*/  buffer_size; } ;
typedef  TYPE_1__ SndioData ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int FUNC0 () ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s1, AVPacket *pkt)
{
    SndioData *s = s1->priv_data;
    int64_t bdelay, cur_time;
    int ret;

    if ((ret = FUNC1(pkt, s->buffer_size)) < 0)
        return ret;

    ret = FUNC4(s->hdl, pkt->data, pkt->size);
    if (ret == 0 || FUNC3(s->hdl)) {
        FUNC2(pkt);
        return AVERROR_EOF;
    }

    pkt->size   = ret;
    s->softpos += ret;

    /* compute pts of the start of the packet */
    cur_time = FUNC0();

    bdelay = ret + s->hwpos - s->softpos;

    /* convert to pts */
    pkt->pts = cur_time - ((bdelay * 1000000) /
        (s->bps * s->channels * s->sample_rate));

    return 0;
}