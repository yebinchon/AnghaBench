#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_14__ ;
typedef  struct TYPE_23__   TYPE_11__ ;

/* Type definitions */
typedef  void* int64_t ;
struct TYPE_23__ {int keep_duplicates; } ;
struct TYPE_29__ {TYPE_11__ q; } ;
struct TYPE_28__ {int /*<<< orphan*/  len; int /*<<< orphan*/ * str; } ;
struct TYPE_27__ {int /*<<< orphan*/  pb; TYPE_5__* priv_data; } ;
struct TYPE_26__ {int duration; void* pts; void* pos; } ;
struct TYPE_25__ {TYPE_14__* codecpar; } ;
struct TYPE_24__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  int /*<<< orphan*/  FFTextReader ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVBPrint ;
typedef  TYPE_5__ ASSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_CODEC_ID_ASS ; 
 void* AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,int) ; 
 int FUNC6 (TYPE_14__*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,TYPE_11__*) ; 
 TYPE_2__* FUNC8 (TYPE_11__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC10 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ *,void**,int*) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s)
{
    ASSContext *ass = s->priv_data;
    AVBPrint header, line, rline;
    int res = 0;
    AVStream *st;
    FFTextReader tr;
    FUNC9(s, &tr, s->pb);

    st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    FUNC5(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_ASS;

    FUNC2(&header, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC2(&line,   0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC2(&rline,  0, AV_BPRINT_SIZE_UNLIMITED);

    ass->q.keep_duplicates = 1;

    for (;;) {
        int64_t pos = FUNC10(&line, &tr);
        int64_t ts_start = AV_NOPTS_VALUE;
        int duration = -1;
        AVPacket *sub;

        if (!line.str[0]) // EOF
            break;

        if (FUNC11(ass, &rline, line.str, &ts_start, &duration) < 0) {
            FUNC3(&header, "%s", line.str);
            continue;
        }
        sub = FUNC8(&ass->q, rline.str, rline.len, 0);
        if (!sub) {
            res = FUNC0(ENOMEM);
            goto end;
        }
        sub->pos = pos;
        sub->pts = ts_start;
        sub->duration = duration;
    }

    res = FUNC6(st->codecpar, &header);
    if (res < 0)
        goto end;

    FUNC7(s, &ass->q);

end:
    FUNC1(&header, NULL);
    FUNC1(&line,   NULL);
    FUNC1(&rline,  NULL);
    return res;
}