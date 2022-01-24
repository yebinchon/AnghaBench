#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_13__ {int /*<<< orphan*/  pb; TYPE_3__** streams; TYPE_2__* priv_data; } ;
struct TYPE_12__ {int dts; int size; int /*<<< orphan*/  flags; } ;
struct TYPE_11__ {TYPE_1__* codecpar; } ;
struct TYPE_10__ {scalar_t__ leading; } ;
struct TYPE_9__ {int width; int height; } ;
typedef  TYPE_2__ FilmstripDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PKT_FLAG_KEY ; 
 int /*<<< orphan*/  EIO ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(AVFormatContext *s,
                       AVPacket *pkt)
{
    FilmstripDemuxContext *film = s->priv_data;
    AVStream *st = s->streams[0];

    if (FUNC2(s->pb))
        return FUNC0(EIO);
    pkt->dts = FUNC4(s->pb) / (st->codecpar->width * (int64_t)(st->codecpar->height + film->leading) * 4);
    pkt->size = FUNC1(s->pb, pkt, st->codecpar->width * st->codecpar->height * 4);
    FUNC3(s->pb, st->codecpar->width * (int64_t) film->leading * 4);
    if (pkt->size < 0)
        return pkt->size;
    pkt->flags |= AV_PKT_FLAG_KEY;
    return 0;
}