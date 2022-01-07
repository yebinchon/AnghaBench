
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVEscapeMode { ____Placeholder_AVEscapeMode } AVEscapeMode ;
struct TYPE_6__ {int len; } ;
typedef TYPE_1__ AVBPrint ;


 int AVERROR (int ) ;
 int AV_BPRINT_SIZE_UNLIMITED ;
 int ENOMEM ;
 int av_bprint_escape (TYPE_1__*,char const*,char const*,int,int) ;
 int av_bprint_finalize (TYPE_1__*,char**) ;
 int av_bprint_init (TYPE_1__*,int,int ) ;
 int av_bprint_is_complete (TYPE_1__*) ;

int av_escape(char **dst, const char *src, const char *special_chars,
              enum AVEscapeMode mode, int flags)
{
    AVBPrint dstbuf;

    av_bprint_init(&dstbuf, 1, AV_BPRINT_SIZE_UNLIMITED);
    av_bprint_escape(&dstbuf, src, special_chars, mode, flags);

    if (!av_bprint_is_complete(&dstbuf)) {
        av_bprint_finalize(&dstbuf, ((void*)0));
        return AVERROR(ENOMEM);
    } else {
        av_bprint_finalize(&dstbuf, dst);
        return dstbuf.len;
    }
}
