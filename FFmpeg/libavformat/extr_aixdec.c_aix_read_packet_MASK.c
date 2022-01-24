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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_7__ {int nb_streams; int /*<<< orphan*/  pb; } ;
struct TYPE_6__ {unsigned int stream_index; unsigned int duration; int /*<<< orphan*/  pos; } ;
typedef  TYPE_1__ AVPacket ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 unsigned int FUNC0 (char,char,char,char) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,unsigned int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 void* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVPacket *pkt)
{
    unsigned size, index, duration, chunk;
    int64_t pos;
    int sequence, ret, i;

    pos = FUNC8(s->pb);
    if (FUNC2(s->pb))
        return AVERROR_EOF;
    chunk = FUNC6(s->pb);
    size = FUNC5(s->pb);
    if (chunk == FUNC0('A','I','X','E')) {
        FUNC7(s->pb, size);
        for (i = 0; i < s->nb_streams; i++) {
            if (FUNC2(s->pb))
                return AVERROR_EOF;
            chunk = FUNC6(s->pb);
            size = FUNC5(s->pb);
            FUNC7(s->pb, size);
        }
        pos = FUNC8(s->pb);
        chunk = FUNC6(s->pb);
        size = FUNC5(s->pb);
    }

    if (chunk != FUNC0('A','I','X','P'))
        return AVERROR_INVALIDDATA;
    if (size <= 8)
        return AVERROR_INVALIDDATA;
    index = FUNC3(s->pb);
    if (FUNC3(s->pb) != s->nb_streams || index >= s->nb_streams)
        return AVERROR_INVALIDDATA;
    duration = FUNC4(s->pb);
    sequence = FUNC5(s->pb);
    if (sequence < 0) {
        FUNC7(s->pb, size - 8);
        return 0;
    }

    ret = FUNC1(s->pb, pkt, size - 8);
    pkt->stream_index = index;
    pkt->duration = duration;
    pkt->pos = pos;
    return ret;
}