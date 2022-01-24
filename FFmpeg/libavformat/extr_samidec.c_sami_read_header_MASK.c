#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_11__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_25__ {int /*<<< orphan*/  str; int /*<<< orphan*/  len; } ;
struct TYPE_24__ {int /*<<< orphan*/  pb; TYPE_1__* priv_data; } ;
struct TYPE_23__ {int duration; int /*<<< orphan*/  pts; scalar_t__ pos; } ;
struct TYPE_22__ {TYPE_11__* codecpar; } ;
struct TYPE_21__ {int /*<<< orphan*/  q; } ;
struct TYPE_20__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_1__ SAMIContext ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_CODEC_ID_SAMI ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int) ; 
 int FUNC8 (TYPE_11__*,TYPE_5__*) ; 
 int FUNC9 (int /*<<< orphan*/ *,TYPE_5__*,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s)
{
    SAMIContext *sami = s->priv_data;
    AVStream *st = FUNC6(s, NULL);
    AVBPrint buf, hdr_buf;
    char c = 0;
    int res = 0, got_first_sync_point = 0;
    FFTextReader tr;
    FUNC14(s, &tr, s->pb);

    if (!st)
        return FUNC0(ENOMEM);
    FUNC7(st, 64, 1, 1000);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_SAMI;

    FUNC3(&buf,     0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC3(&hdr_buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    while (!FUNC13(&tr)) {
        AVPacket *sub;
        const int64_t pos = FUNC15(&tr) - (c != 0);
        int is_sync, is_body, n = FUNC9(&tr, &buf, &c);

        if (n == 0)
            break;

        is_body = !FUNC5(buf.str, "</BODY", 6);
        if (is_body) {
             FUNC1(&buf);
             break;
        }

        is_sync = !FUNC5(buf.str, "<SYNC", 5);
        if (is_sync)
            got_first_sync_point = 1;

        if (!got_first_sync_point) {
            FUNC4(&hdr_buf, "%s", buf.str);
        } else {
            sub = FUNC12(&sami->q, buf.str, buf.len, !is_sync);
            if (!sub) {
                res = FUNC0(ENOMEM);
                goto end;
            }
            if (is_sync) {
                const char *p = FUNC10(buf.str, "Start");
                sub->pos      = pos;
                sub->pts      = p ? FUNC16(p, NULL, 10) : 0;
                sub->duration = -1;
            }
        }
        FUNC1(&buf);
    }

    res = FUNC8(st->codecpar, &hdr_buf);
    if (res < 0)
        goto end;

    FUNC11(s, &sami->q);

end:
    FUNC2(&buf, NULL);
    return res;
}