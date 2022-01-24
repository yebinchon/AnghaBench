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
typedef  int int64_t ;
struct TYPE_16__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int duration; int pts; int pos; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int /*<<< orphan*/  q; } ;
struct TYPE_12__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ SubViewer1Context ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_CODEC_ID_SUBVIEWER1 ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_3__* FUNC1 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,char*,int*,...) ; 
 size_t FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int FUNC11(AVFormatContext *s)
{
    int delay = 0;
    AVPacket *sub = NULL;
    SubViewer1Context *subviewer1 = s->priv_data;
    AVStream *st = FUNC1(s, NULL);

    if (!st)
        return FUNC0(ENOMEM);
    FUNC4(st, 64, 1, 1);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_SUBVIEWER1;

    while (!FUNC2(s->pb)) {
        char line[4096];
        int len = FUNC5(s->pb, line, sizeof(line));
        int hh, mm, ss;

        if (!len)
            break;

        if (!FUNC10(line, "[DELAY]", 7)) {
            FUNC5(s->pb, line, sizeof(line));
            FUNC8(line, "%d", &delay);
        }

        if (FUNC8(line, "[%d:%d:%d]", &hh, &mm, &ss) == 3) {
            const int64_t pos = FUNC3(s->pb);
            int64_t pts_start = hh*3600LL + mm*60LL + ss + delay;

            len = FUNC5(s->pb, line, sizeof(line));
            line[FUNC9(line, "\r\n")] = 0;
            if (!*line) {
                if (sub)
                    sub->duration = pts_start - sub->pts;
            } else {
                sub = FUNC7(&subviewer1->q, line, len, 0);
                if (!sub)
                    return FUNC0(ENOMEM);
                sub->pos = pos;
                sub->pts = pts_start;
                sub->duration = -1;
            }
        }
    }

    FUNC6(s, &subviewer1->q);
    return 0;
}