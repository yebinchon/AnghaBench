#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  line2 ;
typedef  int /*<<< orphan*/  line ;
typedef  int int64_t ;
struct TYPE_17__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_16__ {int pos; int pts; int /*<<< orphan*/  duration; } ;
struct TYPE_15__ {TYPE_1__* codecpar; } ;
struct TYPE_14__ {int /*<<< orphan*/  q; } ;
struct TYPE_13__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ SCCContext ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_CODEC_ID_EIA_608 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 char* FUNC2 (char*,char*,char**) ; 
 TYPE_3__* FUNC3 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 
 int FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC7 (int /*<<< orphan*/ *,int*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 
 int FUNC13 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    SCCContext *scc = s->priv_data;
    AVStream *st = FUNC3(s, NULL);
    char line[4096], line2[4096];
    int count = 0, ret = 0;
    ptrdiff_t len2, len;
    uint8_t out[4096];
    FFTextReader tr;

    FUNC10(s, &tr, s->pb);

    if (!st)
        return FUNC0(ENOMEM);
    FUNC4(st, 64, 1, 1000);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_EIA_608;

    while (!FUNC9(&tr)) {
        const int64_t pos = FUNC11(&tr);
        char *saveptr = NULL, *lline;
        int hh1, mm1, ss1, fs1, i;
        int hh2, mm2, ss2, fs2;
        int64_t ts_start, ts_end;
        AVPacket *sub;

        if (count == 0) {
            while (!FUNC9(&tr)) {
                len = FUNC8(&tr, line, sizeof(line));
                if (len > 13)
                    break;
            }
        }

        if (!FUNC14(line, "Scenarist_SCC V1.0", 18))
            continue;
        if (FUNC13(line, "%d:%d:%d%*[:;]%d", &hh1, &mm1, &ss1, &fs1) != 4)
            continue;

        ts_start = (hh1 * 3600LL + mm1 * 60LL + ss1) * 1000LL + fs1 * 33;

        while (!FUNC9(&tr)) {
            len2 = FUNC8(&tr, line2, sizeof(line2));
            if (len2 > 13)
                break;
        }
        if (FUNC13(line2, "%d:%d:%d%*[:;]%d", &hh2, &mm2, &ss2, &fs2) != 4)
            continue;

        ts_end = (hh2 * 3600LL + mm2 * 60LL + ss2) * 1000LL + fs2 * 33;
        count++;

try_again:
        lline = (char *)&line;
        lline += 12;

        for (i = 0; i < 4095; i += 3) {
            char *ptr = FUNC2(lline, " ", &saveptr);
            char c1, c2, c3, c4;

            if (!ptr)
                break;

            if (FUNC13(ptr, "%c%c%c%c", &c1, &c2, &c3, &c4) != 4)
                break;

            lline = NULL;
            out[i+0] = 0xfc;
            out[i+1] = FUNC5(c2) | (FUNC5(c1) << 4);
            out[i+2] = FUNC5(c4) | (FUNC5(c3) << 4);
        }
        out[i] = 0;

        sub = FUNC7(&scc->q, out, i, 0);
        if (!sub)
            return FUNC0(ENOMEM);

        sub->pos = pos;
        sub->pts = ts_start;
        sub->duration = FUNC1(1200, ts_end - ts_start);
        FUNC12(line, line2, sizeof(line));
        line2[0] = 0;
    }

    if (line[0])
        goto try_again;

    FUNC6(s, &scc->q);

    return ret;
}