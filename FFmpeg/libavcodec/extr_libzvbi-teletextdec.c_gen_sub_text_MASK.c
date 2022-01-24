#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {scalar_t__ rows; int /*<<< orphan*/  columns; } ;
typedef  TYPE_1__ vbi_page ;
struct TYPE_17__ {scalar_t__ chop_spaces; } ;
typedef  TYPE_2__ TeletextContext ;
struct TYPE_19__ {int /*<<< orphan*/  str; scalar_t__ len; } ;
struct TYPE_18__ {int /*<<< orphan*/  type; int /*<<< orphan*/  ass; } ;
typedef  TYPE_3__ AVSubtitleRect ;
typedef  TYPE_4__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SUBTITLE_ASS ; 
 int /*<<< orphan*/  SUBTITLE_NONE ; 
 scalar_t__ TEXT_MAXSZ ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC8 (scalar_t__) ; 
 int FUNC9 (char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int FUNC12 (TYPE_1__*,char*,scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC13(TeletextContext *ctx, AVSubtitleRect *sub_rect, vbi_page *page, int chop_top)
{
    const char *in;
    AVBPrint buf;
    char *vbi_text = FUNC8(TEXT_MAXSZ);
    int sz;

    if (!vbi_text)
        return FUNC0(ENOMEM);

    sz = FUNC12(page, vbi_text, TEXT_MAXSZ-1, "UTF-8",
                                   /*table mode*/ TRUE, FALSE,
                                   0,             chop_top,
                                   page->columns, page->rows-chop_top);
    if (sz <= 0) {
        FUNC7(ctx, AV_LOG_ERROR, "vbi_print error\n");
        FUNC6(vbi_text);
        return AVERROR_EXTERNAL;
    }
    vbi_text[sz] = '\0';
    in  = vbi_text;
    FUNC3(&buf, 0, TEXT_MAXSZ);

    if (ctx->chop_spaces) {
        for (;;) {
            int nl, sz;

            // skip leading spaces and newlines
            in += FUNC11(in, " \n");
            // compute end of row
            for (nl = 0; in[nl]; ++nl)
                if (in[nl] == '\n' && (nl==0 || !(in[nl-1] & 0x80)))
                    break;
            if (!in[nl])
                break;
            // skip trailing spaces
            sz = FUNC9(in, nl);
            FUNC1(&buf, in, sz);
            FUNC5(&buf, "\n");
            in += nl;
        }
    } else {
        FUNC5(&buf, "%s\n", vbi_text);
    }
    FUNC6(vbi_text);

    if (!FUNC4(&buf)) {
        FUNC2(&buf, NULL);
        return FUNC0(ENOMEM);
    }

    if (buf.len) {
        sub_rect->type = SUBTITLE_ASS;
        sub_rect->ass = FUNC10(ctx, buf.str);

        if (!sub_rect->ass) {
            FUNC2(&buf, NULL);
            return FUNC0(ENOMEM);
        }
        FUNC7(ctx, AV_LOG_DEBUG, "subtext:%s:txetbus\n", sub_rect->ass);
    } else {
        sub_rect->type = SUBTITLE_NONE;
    }
    FUNC2(&buf, NULL);
    return 0;
}