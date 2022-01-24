#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; } ;
struct TYPE_11__ {int /*<<< orphan*/  vi; scalar_t__ error; } ;
struct TYPE_10__ {scalar_t__ codec_type; } ;
typedef  TYPE_2__ AviSynthContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_UNKNOWN ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__**,int /*<<< orphan*/ *,int*) ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (TYPE_4__*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s, AVPacket *pkt)
{
    AviSynthContext *avs = s->priv_data;
    AVStream *st;
    int discard = 0;
    int ret;

    if (avs->error)
        return AVERROR_UNKNOWN;

    /* If either stream reaches EOF, try to read the other one before
     * giving up. */
    FUNC0(s, &st, pkt, &discard);
    if (st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO) {
        ret = FUNC2(s, pkt, discard);
        if (ret == AVERROR_EOF && FUNC3(avs->vi)) {
            FUNC0(s, &st, pkt, &discard);
            return FUNC1(s, pkt, discard);
        }
    } else {
        ret = FUNC1(s, pkt, discard);
        if (ret == AVERROR_EOF && FUNC4(avs->vi)) {
            FUNC0(s, &st, pkt, &discard);
            return FUNC2(s, pkt, discard);
        }
    }

    return ret;
}