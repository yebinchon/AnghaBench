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
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_16__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  pos; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int /*<<< orphan*/  q; } ;
struct TYPE_12__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ MPL2Context ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_CODEC_ID_MPL2 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 TYPE_3__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char**,int /*<<< orphan*/ *,int*) ; 
 size_t FUNC11 (char*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s)
{
    MPL2Context *mpl2 = s->priv_data;
    AVStream *st = FUNC1(s, NULL);
    int res = 0;

    if (!st)
        return FUNC0(ENOMEM);
    FUNC6(st, 64, 1, 10);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_MPL2;

    if (FUNC3(s->pb) != 0xefbbbf)
        FUNC4(s->pb, -3, SEEK_CUR);

    while (!FUNC2(s->pb)) {
        char line[4096];
        char *p = line;
        const int64_t pos = FUNC5(s->pb);
        int len = FUNC7(s->pb, line, sizeof(line));
        int64_t pts_start;
        int duration;

        if (!len)
            break;

        line[FUNC11(line, "\r\n")] = 0;

        if (!FUNC10(&p, &pts_start, &duration)) {
            AVPacket *sub;

            sub = FUNC9(&mpl2->q, p, FUNC12(p), 0);
            if (!sub)
                return FUNC0(ENOMEM);
            sub->pos = pos;
            sub->pts = pts_start;
            sub->duration = duration;
        }
    }

    FUNC8(s, &mpl2->q);
    return res;
}