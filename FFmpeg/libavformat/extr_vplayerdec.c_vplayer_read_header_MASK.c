#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
typedef  scalar_t__ int64_t ;
struct TYPE_13__ {int /*<<< orphan*/  q; } ;
typedef  TYPE_2__ VPlayerContext ;
struct TYPE_16__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__ pos; int duration; scalar_t__ pts; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_12__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_CODEC_ID_VPLAYER ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char**) ; 
 size_t FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    VPlayerContext *vplayer = s->priv_data;
    AVStream *st = FUNC1(s, NULL);

    if (!st)
        return FUNC0(ENOMEM);
    FUNC4(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_VPLAYER;

    while (!FUNC2(s->pb)) {
        char line[4096];
        char *p = line;
        const int64_t pos = FUNC3(s->pb);
        int len = FUNC5(s->pb, line, sizeof(line));
        int64_t pts_start;

        if (!len)
            break;

        line[FUNC9(line, "\r\n")] = 0;

        pts_start = FUNC8(&p);
        if (pts_start != AV_NOPTS_VALUE) {
            AVPacket *sub;

            sub = FUNC7(&vplayer->q, p, FUNC10(p), 0);
            if (!sub)
                return FUNC0(ENOMEM);
            sub->pos = pos;
            sub->pts = pts_start;
            sub->duration = -1;
        }
    }

    FUNC6(s, &vplayer->q);
    return 0;
}