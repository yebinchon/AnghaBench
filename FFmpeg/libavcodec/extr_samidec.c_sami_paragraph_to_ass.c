
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int str; scalar_t__ len; } ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {TYPE_3__ encoded_content; TYPE_3__ full; TYPE_3__ content; TYPE_3__ encoded_source; TYPE_3__ source; } ;
typedef TYPE_1__ SAMIContext ;
typedef TYPE_2__ AVCodecContext ;
typedef TYPE_3__ AVBPrint ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_bprint_chars (TYPE_3__*,char,int) ;
 int av_bprint_clear (TYPE_3__*) ;
 int av_bprintf (TYPE_3__*,char*,...) ;
 int av_free (char*) ;
 int av_isspace (char) ;
 char* av_strdup (char const*) ;
 char* av_stristr (char*,char*) ;
 int av_strncasecmp (char*,char*,int) ;
 char* av_strtok (char*,char*,char**) ;
 int ff_htmlmarkup_to_ass (TYPE_2__*,TYPE_3__*,int ) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int sami_paragraph_to_ass(AVCodecContext *avctx, const char *src)
{
    SAMIContext *sami = avctx->priv_data;
    int ret = 0;
    char *tag = ((void*)0);
    char *dupsrc = av_strdup(src);
    char *p = dupsrc;
    AVBPrint *dst_content = &sami->encoded_content;
    AVBPrint *dst_source = &sami->encoded_source;

    if (!dupsrc)
        return AVERROR(ENOMEM);

    av_bprint_clear(&sami->encoded_content);
    av_bprint_clear(&sami->content);
    av_bprint_clear(&sami->encoded_source);
    for (;;) {
        char *saveptr = ((void*)0);
        int prev_chr_is_space = 0;
        AVBPrint *dst = &sami->content;


        p = av_stristr(p, "<P");
        if (!p)
            break;
        if (p[2] != '>' && !av_isspace(p[2])) {
            p++;
            continue;
        }
        if (dst->len)
            av_bprintf(dst, "\\N");
        tag = av_strtok(p, ">", &saveptr);
        if (!tag || !saveptr)
            break;
        p = saveptr;


        if (av_stristr(tag, "ID=Source") || av_stristr(tag, "ID=\"Source\"")) {
            dst = &sami->source;
            av_bprint_clear(dst);
        }


        while (av_isspace(*p))
            p++;
        if (!strncmp(p, "&nbsp;", 6)) {
            ret = -1;
            goto end;
        }


        while (*p) {
            if (*p == '<') {
                if (!av_strncasecmp(p, "<P", 2) && (p[2] == '>' || av_isspace(p[2])))
                    break;
            }
            if (!av_strncasecmp(p, "<BR", 3)) {
                av_bprintf(dst, "\\N");
                p++;
                while (*p && *p != '>')
                    p++;
                if (!*p)
                    break;
                if (*p == '>')
                    p++;
                continue;
            }
            if (!av_isspace(*p))
                av_bprint_chars(dst, *p, 1);
            else if (!prev_chr_is_space)
                av_bprint_chars(dst, ' ', 1);
            prev_chr_is_space = av_isspace(*p);
            p++;
        }
    }

    av_bprint_clear(&sami->full);
    if (sami->source.len) {
        ret = ff_htmlmarkup_to_ass(avctx, dst_source, sami->source.str);
        if (ret < 0)
            goto end;
        av_bprintf(&sami->full, "{\\i1}%s{\\i0}\\N", sami->encoded_source.str);
    }
    ret = ff_htmlmarkup_to_ass(avctx, dst_content, sami->content.str);
    if (ret < 0)
        goto end;
    av_bprintf(&sami->full, "%s", sami->encoded_content.str);

end:
    av_free(dupsrc);
    return ret;
}
