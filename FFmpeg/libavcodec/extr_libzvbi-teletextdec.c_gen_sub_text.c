
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {scalar_t__ rows; int columns; } ;
typedef TYPE_1__ vbi_page ;
struct TYPE_17__ {scalar_t__ chop_spaces; } ;
typedef TYPE_2__ TeletextContext ;
struct TYPE_19__ {int str; scalar_t__ len; } ;
struct TYPE_18__ {int type; int ass; } ;
typedef TYPE_3__ AVSubtitleRect ;
typedef TYPE_4__ AVBPrint ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int FALSE ;
 int SUBTITLE_ASS ;
 int SUBTITLE_NONE ;
 scalar_t__ TEXT_MAXSZ ;
 int TRUE ;
 int av_bprint_append_data (TYPE_4__*,char const*,int) ;
 int av_bprint_finalize (TYPE_4__*,int *) ;
 int av_bprint_init (TYPE_4__*,int ,scalar_t__) ;
 int av_bprint_is_complete (TYPE_4__*) ;
 int av_bprintf (TYPE_4__*,char*,...) ;
 int av_free (char*) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 char* av_malloc (scalar_t__) ;
 int chop_spaces_utf8 (char const*,int) ;
 int create_ass_text (TYPE_2__*,int ) ;
 int strspn (char const*,char*) ;
 int vbi_print_page_region (TYPE_1__*,char*,scalar_t__,char*,int ,int ,int ,int,int ,scalar_t__) ;

__attribute__((used)) static int gen_sub_text(TeletextContext *ctx, AVSubtitleRect *sub_rect, vbi_page *page, int chop_top)
{
    const char *in;
    AVBPrint buf;
    char *vbi_text = av_malloc(TEXT_MAXSZ);
    int sz;

    if (!vbi_text)
        return AVERROR(ENOMEM);

    sz = vbi_print_page_region(page, vbi_text, TEXT_MAXSZ-1, "UTF-8",
                                                  TRUE, FALSE,
                                   0, chop_top,
                                   page->columns, page->rows-chop_top);
    if (sz <= 0) {
        av_log(ctx, AV_LOG_ERROR, "vbi_print error\n");
        av_free(vbi_text);
        return AVERROR_EXTERNAL;
    }
    vbi_text[sz] = '\0';
    in = vbi_text;
    av_bprint_init(&buf, 0, TEXT_MAXSZ);

    if (ctx->chop_spaces) {
        for (;;) {
            int nl, sz;


            in += strspn(in, " \n");

            for (nl = 0; in[nl]; ++nl)
                if (in[nl] == '\n' && (nl==0 || !(in[nl-1] & 0x80)))
                    break;
            if (!in[nl])
                break;

            sz = chop_spaces_utf8(in, nl);
            av_bprint_append_data(&buf, in, sz);
            av_bprintf(&buf, "\n");
            in += nl;
        }
    } else {
        av_bprintf(&buf, "%s\n", vbi_text);
    }
    av_free(vbi_text);

    if (!av_bprint_is_complete(&buf)) {
        av_bprint_finalize(&buf, ((void*)0));
        return AVERROR(ENOMEM);
    }

    if (buf.len) {
        sub_rect->type = SUBTITLE_ASS;
        sub_rect->ass = create_ass_text(ctx, buf.str);

        if (!sub_rect->ass) {
            av_bprint_finalize(&buf, ((void*)0));
            return AVERROR(ENOMEM);
        }
        av_log(ctx, AV_LOG_DEBUG, "subtext:%s:txetbus\n", sub_rect->ass);
    } else {
        sub_rect->type = SUBTITLE_NONE;
    }
    av_bprint_finalize(&buf, ((void*)0));
    return 0;
}
