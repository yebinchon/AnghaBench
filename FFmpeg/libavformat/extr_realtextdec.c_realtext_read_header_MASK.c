#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int64_t ;
struct TYPE_23__ {int /*<<< orphan*/  str; scalar_t__ len; } ;
struct TYPE_22__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_21__ {int pts; int duration; scalar_t__ pos; } ;
struct TYPE_20__ {TYPE_1__* codecpar; } ;
struct TYPE_19__ {int /*<<< orphan*/  q; } ;
struct TYPE_18__ {scalar_t__ extradata_size; scalar_t__ extradata; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ RealTextContext ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVPacket ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_CODEC_ID_REALTEXT ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC6 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int,int,int) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_6__*,char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (char const*) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *s)
{
    RealTextContext *rt = s->priv_data;
    AVStream *st = FUNC6(s, NULL);
    AVBPrint buf;
    char c = 0;
    int res = 0, duration = FUNC16("60"); // default duration is 60 seconds
    FFTextReader tr;
    FUNC14(s, &tr, s->pb);

    if (!st)
        return FUNC0(ENOMEM);
    FUNC7(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_REALTEXT;

    FUNC3(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    while (!FUNC13(&tr)) {
        AVPacket *sub;
        const int64_t pos = FUNC15(&tr) - (c != 0);
        int n = FUNC8(&tr, &buf, &c);

        if (n == 0)
            break;

        if (!FUNC5(buf.str, "<window", 7)) {
            /* save header to extradata */
            const char *p = FUNC9(buf.str, "duration");

            if (st->codecpar->extradata) {
                res = AVERROR_INVALIDDATA;
                goto end;
            }
            if (p)
                duration = FUNC16(p);
            st->codecpar->extradata = FUNC4(buf.str);
            if (!st->codecpar->extradata) {
                res = FUNC0(ENOMEM);
                goto end;
            }
            st->codecpar->extradata_size = buf.len + 1;
        } else {
            /* if we just read a <time> tag, introduce a new event, otherwise merge
             * with the previous one */
            int merge = !FUNC5(buf.str, "<time", 5) ? 0 : 1;
            sub = FUNC12(&rt->q, buf.str, buf.len, merge);
            if (!sub) {
                res = FUNC0(ENOMEM);
                goto end;
            }
            if (!merge) {
                const char *begin = FUNC9(buf.str, "begin");
                const char *end   = FUNC9(buf.str, "end");

                sub->pos      = pos;
                sub->pts      = begin ? FUNC16(begin) : 0;
                sub->duration = end ? (FUNC16(end) - sub->pts) : duration;
            }
        }
        FUNC1(&buf);
    }
    FUNC11(s, &rt->q);

end:
    FUNC2(&buf, NULL);
    if (res < 0)
        FUNC10(&rt->q);
    return res;
}