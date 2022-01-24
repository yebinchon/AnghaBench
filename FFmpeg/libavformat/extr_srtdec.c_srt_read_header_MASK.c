#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct event_info {int /*<<< orphan*/  pos; } ;
typedef  int /*<<< orphan*/  ptrdiff_t ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_20__ {int /*<<< orphan*/  len; } ;
struct TYPE_19__ {int /*<<< orphan*/  pb; TYPE_2__* priv_data; } ;
struct TYPE_18__ {TYPE_1__* codecpar; } ;
struct TYPE_17__ {int /*<<< orphan*/  q; } ;
struct TYPE_16__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ SRTContext ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;
typedef  TYPE_5__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_CODEC_ID_SUBRIP ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,char*,struct event_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,char*,char*) ; 
 TYPE_3__* FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,struct event_info*) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*) ; 
 scalar_t__ FUNC14 (char*,char**,int) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    SRTContext *srt = s->priv_data;
    AVBPrint buf;
    AVStream *st = FUNC5(s, NULL);
    int res = 0;
    char line[4096], line_cache[4096];
    int has_event_info = 0;
    struct event_info ei;
    FFTextReader tr;
    FUNC10(s, &tr, s->pb);

    if (!st)
        return FUNC0(ENOMEM);
    FUNC6(st, 64, 1, 1000);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_SUBRIP;

    FUNC3(&buf, 0, AV_BPRINT_SIZE_UNLIMITED);

    line_cache[0] = 0;

    while (!FUNC9(&tr)) {
        struct event_info tmp_ei;
        const int64_t pos = FUNC11(&tr);
        ptrdiff_t len = FUNC8(&tr, line, sizeof(line));

        if (len < 0)
            break;

        if (!len || !line[0])
            continue;

        if (FUNC12(line, &tmp_ei) < 0) {
            char *pline;

            if (!has_event_info)
                continue;

            if (line_cache[0]) {
                /* We got some cache and a new line so we assume the cached
                 * line was actually part of the payload */
                FUNC4(&buf, "%s\n", line_cache);
                line_cache[0] = 0;
            }

            /* If the line doesn't start with a number, we assume it's part of
             * the payload, otherwise is likely an event number preceding the
             * timing information... but we can't be sure of this yet, so we
             * cache it */
            if (FUNC14(line, &pline, 10) < 0 || line == pline)
                FUNC4(&buf, "%s\n", line);
            else
                FUNC13(line_cache, line);
        } else {
            if (has_event_info) {
                /* We have the information of previous event, append it to the
                 * queue. We insert the cached line if and only if the payload
                 * is empty and the cached line is not a standalone number. */
                char *pline = NULL;
                const int standalone_number = FUNC14(line_cache, &pline, 10) >= 0 && pline && !*pline;
                res = FUNC1(&srt->q, &buf, line_cache, &ei, !buf.len && !standalone_number);
                if (res < 0)
                    goto end;
            } else {
                has_event_info = 1;
            }
            tmp_ei.pos = pos;
            ei = tmp_ei;
        }
    }

    /* Append the last event. Here we force the cache to be flushed, because a
     * trailing number is more likely to be geniune (for example a copyright
     * date) and not the event index of an inexistant event */
    if (has_event_info) {
        res = FUNC1(&srt->q, &buf, line_cache, &ei, 1);
        if (res < 0)
            goto end;
    }

    FUNC7(s, &srt->q);

end:
    FUNC2(&buf, NULL);
    return res;
}