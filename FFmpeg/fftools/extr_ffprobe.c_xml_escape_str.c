
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char const* str; } ;
typedef TYPE_1__ AVBPrint ;


 int av_bprint_chars (TYPE_1__*,char const,int) ;
 int av_bprintf (TYPE_1__*,char*,char*) ;

__attribute__((used)) static const char *xml_escape_str(AVBPrint *dst, const char *src, void *log_ctx)
{
    const char *p;

    for (p = src; *p; p++) {
        switch (*p) {
        case '&' : av_bprintf(dst, "%s", "&amp;"); break;
        case '<' : av_bprintf(dst, "%s", "&lt;"); break;
        case '>' : av_bprintf(dst, "%s", "&gt;"); break;
        case '"' : av_bprintf(dst, "%s", "&quot;"); break;
        case '\'': av_bprintf(dst, "%s", "&apos;"); break;
        default: av_bprint_chars(dst, *p, 1);
        }
    }

    return dst->str;
}
