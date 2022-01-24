#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  str; scalar_t__ len; } ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {TYPE_3__ encoded_content; TYPE_3__ full; TYPE_3__ content; TYPE_3__ encoded_source; TYPE_3__ source; } ;
typedef  TYPE_1__ SAMIContext ;
typedef  TYPE_2__ AVCodecContext ;
typedef  TYPE_3__ AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (char) ; 
 char* FUNC6 (char const*) ; 
 char* FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 char* FUNC9 (char*,char*,char**) ; 
 int FUNC10 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static int FUNC12(AVCodecContext *avctx, const char *src)
{
    SAMIContext *sami = avctx->priv_data;
    int ret = 0;
    char *tag = NULL;
    char *dupsrc = FUNC6(src);
    char *p = dupsrc;
    AVBPrint *dst_content = &sami->encoded_content;
    AVBPrint *dst_source = &sami->encoded_source;

    if (!dupsrc)
        return FUNC0(ENOMEM);

    FUNC2(&sami->encoded_content);
    FUNC2(&sami->content);
    FUNC2(&sami->encoded_source);
    for (;;) {
        char *saveptr = NULL;
        int prev_chr_is_space = 0;
        AVBPrint *dst = &sami->content;

        /* parse & extract paragraph tag */
        p = FUNC7(p, "<P");
        if (!p)
            break;
        if (p[2] != '>' && !FUNC5(p[2])) { // avoid confusion with tags such as <PRE>
            p++;
            continue;
        }
        if (dst->len) // add a separator with the previous paragraph if there was one
            FUNC3(dst, "\\N");
        tag = FUNC9(p, ">", &saveptr);
        if (!tag || !saveptr)
            break;
        p = saveptr;

        /* check if the current paragraph is the "source" (speaker name) */
        if (FUNC7(tag, "ID=Source") || FUNC7(tag, "ID=\"Source\"")) {
            dst = &sami->source;
            FUNC2(dst);
        }

        /* if empty event -> skip subtitle */
        while (FUNC5(*p))
            p++;
        if (!FUNC11(p, "&nbsp;", 6)) {
            ret = -1;
            goto end;
        }

        /* extract the text, stripping most of the tags */
        while (*p) {
            if (*p == '<') {
                if (!FUNC8(p, "<P", 2) && (p[2] == '>' || FUNC5(p[2])))
                    break;
            }
            if (!FUNC8(p, "<BR", 3)) {
                FUNC3(dst, "\\N");
                p++;
                while (*p && *p != '>')
                    p++;
                if (!*p)
                    break;
                if (*p == '>')
                    p++;
                continue;
            }
            if (!FUNC5(*p))
                FUNC1(dst, *p, 1);
            else if (!prev_chr_is_space)
                FUNC1(dst, ' ', 1);
            prev_chr_is_space = FUNC5(*p);
            p++;
        }
    }

    FUNC2(&sami->full);
    if (sami->source.len) {
        ret = FUNC10(avctx, dst_source, sami->source.str);
        if (ret < 0)
            goto end;
        FUNC3(&sami->full, "{\\i1}%s{\\i0}\\N", sami->encoded_source.str);
    }
    ret = FUNC10(avctx, dst_content, sami->content.str);
    if (ret < 0)
        goto end;
    FUNC3(&sami->full, "%s", sami->encoded_content.str);

end:
    FUNC4(dupsrc);
    return ret;
}