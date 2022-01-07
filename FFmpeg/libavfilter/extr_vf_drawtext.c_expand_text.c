
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterContext ;
typedef int AVBPrint ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_bprint_chars (int *,char,int) ;
 int av_bprint_clear (int *) ;
 int av_bprint_is_complete (int *) ;
 int expand_function (int *,int *,char**) ;

__attribute__((used)) static int expand_text(AVFilterContext *ctx, char *text, AVBPrint *bp)
{
    int ret;

    av_bprint_clear(bp);
    while (*text) {
        if (*text == '\\' && text[1]) {
            av_bprint_chars(bp, text[1], 1);
            text += 2;
        } else if (*text == '%') {
            text++;
            if ((ret = expand_function(ctx, bp, &text)) < 0)
                return ret;
        } else {
            av_bprint_chars(bp, *text, 1);
            text++;
        }
    }
    if (!av_bprint_is_complete(bp))
        return AVERROR(ENOMEM);
    return 0;
}
