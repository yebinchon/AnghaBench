#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  value ;
typedef  int /*<<< orphan*/  line ;
typedef  int /*<<< orphan*/  key ;
typedef  void* int64_t ;
struct TYPE_16__ {int /*<<< orphan*/  extradata; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_15__ {int /*<<< orphan*/  pb; int /*<<< orphan*/  metadata; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int duration; void* pts; void* pos; } ;
struct TYPE_13__ {TYPE_8__* codecpar; } ;
struct TYPE_12__ {int /*<<< orphan*/  q; } ;
typedef  TYPE_1__ SubViewerContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVPacket ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_SUBTITLE ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_CODEC_ID_SUBVIEWER ; 
 void* AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 char FUNC5 (char) ; 
 TYPE_2__* FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int,int,int) ; 
 int FUNC12 (TYPE_8__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC15 (int /*<<< orphan*/ *,char*,int,int) ; 
 int FUNC16 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC17 (char*,void**,int*) ; 
 size_t FUNC18 (char*,char*) ; 
 int FUNC19 (char*) ; 
 scalar_t__ FUNC20 (char*,char*,int) ; 
 scalar_t__ FUNC21 (char*,char*) ; 

__attribute__((used)) static int FUNC22(AVFormatContext *s)
{
    SubViewerContext *subviewer = s->priv_data;
    AVStream *st = FUNC6(s, NULL);
    AVBPrint header;
    int res = 0, new_event = 1;
    int64_t pts_start = AV_NOPTS_VALUE;
    int duration = -1;
    AVPacket *sub = NULL;

    if (!st)
        return FUNC0(ENOMEM);
    res = FUNC16(s->pb, 3);
    if (res < 0)
        return res;
    if (FUNC8(s->pb) != 0xefbbbf)
        FUNC9(s->pb, -3, SEEK_CUR);
    FUNC11(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id   = AV_CODEC_ID_SUBVIEWER;

    FUNC2(&header, 0, AV_BPRINT_SIZE_UNLIMITED);

    while (!FUNC7(s->pb)) {
        char line[2048];
        int64_t pos = 0;
        int len = FUNC13(s->pb, line, sizeof(line));

        if (!len)
            break;

        line[FUNC18(line, "\r\n")] = 0;

        if (line[0] == '[' && FUNC20(line, "[br]", 4)) {

            /* ignore event style, XXX: add to side_data? */
            if (FUNC21(line, "[COLF]") || FUNC21(line, "[SIZE]") ||
                FUNC21(line, "[FONT]") || FUNC21(line, "[STYLE]"))
                continue;

            if (!st->codecpar->extradata) { // header not finalized yet
                FUNC3(&header, "%s\n", line);
                if (!FUNC20(line, "[END INFORMATION]", 17) || !FUNC20(line, "[SUBTITLE]", 10)) {
                    /* end of header */
                    res = FUNC12(st->codecpar, &header);
                    if (res < 0)
                        goto end;
                } else if (FUNC20(line, "[INFORMATION]", 13)) {
                    /* assume file metadata at this point */
                    int i, j = 0;
                    char key[32], value[128];

                    for (i = 1; i < sizeof(key) - 1 && line[i] && line[i] != ']'; i++)
                        key[i - 1] = FUNC5(line[i]);
                    key[i - 1] = 0;

                    if (line[i] == ']')
                        i++;
                    while (line[i] == ' ')
                        i++;
                    while (j < sizeof(value) - 1 && line[i] && line[i] != ']')
                        value[j++] = line[i++];
                    value[j] = 0;

                    FUNC4(&s->metadata, key, value, 0);
                }
            }
        } else if (FUNC17(line, &pts_start, &duration) >= 0) {
            new_event = 1;
            pos = FUNC10(s->pb);
        } else if (*line) {
            if (!new_event) {
                sub = FUNC15(&subviewer->q, "\n", 1, 1);
                if (!sub) {
                    res = FUNC0(ENOMEM);
                    goto end;
                }
            }
            sub = FUNC15(&subviewer->q, line, FUNC19(line), !new_event);
            if (!sub) {
                res = FUNC0(ENOMEM);
                goto end;
            }
            if (new_event) {
                sub->pos = pos;
                sub->pts = pts_start;
                sub->duration = duration;
            }
            new_event = 0;
        }
    }

    FUNC14(s, &subviewer->q);

end:
    FUNC1(&header, NULL);
    return res;
}