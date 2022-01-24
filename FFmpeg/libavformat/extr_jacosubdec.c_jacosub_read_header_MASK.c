#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_21__ {int nb_subs; TYPE_3__* subs; } ;
struct TYPE_20__ {TYPE_1__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_19__ {int /*<<< orphan*/  duration; int /*<<< orphan*/  pts; int /*<<< orphan*/  data; int /*<<< orphan*/  pos; } ;
struct TYPE_18__ {TYPE_12__* codecpar; } ;
struct TYPE_17__ {int timeres; TYPE_9__ q; int /*<<< orphan*/  shift; } ;
struct TYPE_16__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_1__ JACOsubContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_CODEC_ID_JACOSUB ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int JSS_MAX_LINESIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int*,int) ; 
 TYPE_2__* FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int,int,int) ; 
 int** cmds ; 
 int FUNC8 (TYPE_12__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_4__*,TYPE_9__*) ; 
 TYPE_3__* FUNC11 (TYPE_9__*,char*,int,int) ; 
 int FUNC12 (char const) ; 
 int /*<<< orphan*/  FUNC13 (int,char const*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 char* FUNC15 (char const*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*,char*) ; 
 int FUNC18 (int*) ; 
 int FUNC19 (char const*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC20 (char const*) ; 

__attribute__((used)) static int FUNC21(AVFormatContext *s)
{
    AVBPrint header;
    AVIOContext *pb = s->pb;
    char line[JSS_MAX_LINESIZE];
    JACOsubContext *jacosub = s->priv_data;
    int shift_set = 0; // only the first shift matters
    int merge_line = 0;
    int i, ret;

    AVStream *st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    FUNC7(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_JACOSUB;

    jacosub->timeres = 30;

    FUNC1(&header, 1024+AV_INPUT_BUFFER_PADDING_SIZE, 4096);

    while (!FUNC5(pb)) {
        int cmd_len;
        const char *p = line;
        int64_t pos = FUNC6(pb);
        int len = FUNC9(pb, line, sizeof(line));

        p = FUNC15(p);

        /* queue timed line */
        if (merge_line || FUNC20(p)) {
            AVPacket *sub;

            sub = FUNC11(&jacosub->q, line, len, merge_line);
            if (!sub)
                return FUNC0(ENOMEM);
            sub->pos = pos;
            merge_line = len > 1 && !FUNC17(&line[len - 2], "\\\n");
            continue;
        }

        /* skip all non-compiler commands and focus on the command */
        if (*p != '#')
            continue;
        p++;
        i = FUNC12(p[0]);
        if (i == -1)
            continue;

        /* trim command + spaces */
        cmd_len = FUNC18(cmds[i]);
        if (FUNC3(p, cmds[i], cmd_len) == 0)
            p += cmd_len;
        else
            p++;
        p = FUNC15(p);

        /* handle commands which affect the whole script */
        switch (cmds[i][0]) {
        case 'S': // SHIFT command affect the whole script...
            if (!shift_set) {
                jacosub->shift = FUNC13(jacosub->timeres, p);
                shift_set = 1;
            }
            FUNC2(&header, "#S %s", p);
            break;
        case 'T': // ...but must be placed after TIMERES
            jacosub->timeres = FUNC19(p, NULL, 10);
            if (!jacosub->timeres)
                jacosub->timeres = 30;
            else
                FUNC2(&header, "#T %s", p);
            break;
        }
    }

    /* general/essential directives in the extradata */
    ret = FUNC8(st->codecpar, &header);
    if (ret < 0)
        goto fail;

    /* SHIFT and TIMERES affect the whole script so packet timing can only be
     * done in a second pass */
    for (i = 0; i < jacosub->q.nb_subs; i++) {
        AVPacket *sub = &jacosub->q.subs[i];
        FUNC16(jacosub, sub->data, &sub->pts, &sub->duration);
    }
    FUNC10(s, &jacosub->q);

    return 0;
fail:
    FUNC14(s);
    return ret;
}