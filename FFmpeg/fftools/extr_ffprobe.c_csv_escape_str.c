
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* str; } ;
typedef TYPE_1__ AVBPrint ;


 int av_bprint_chars (TYPE_1__*,char const,int) ;
 size_t strcspn (char const*,char*) ;

__attribute__((used)) static const char *csv_escape_str(AVBPrint *dst, const char *src, const char sep, void *log_ctx)
{
    char meta_chars[] = { sep, '"', '\n', '\r', '\0' };
    int needs_quoting = !!src[strcspn(src, meta_chars)];

    if (needs_quoting)
        av_bprint_chars(dst, '"', 1);

    for (; *src; src++) {
        if (*src == '"')
            av_bprint_chars(dst, '"', 1);
        av_bprint_chars(dst, *src, 1);
    }
    if (needs_quoting)
        av_bprint_chars(dst, '"', 1);
    return dst->str;
}
