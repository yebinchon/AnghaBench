
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct AVBPrint {int len; } ;
struct TYPE_3__ {char* extradata; int extradata_size; } ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_bprint_finalize (struct AVBPrint*,char**) ;
 int av_bprint_is_complete (struct AVBPrint*) ;
 int av_free (char*) ;

int ff_bprint_to_codecpar_extradata(AVCodecParameters *par, struct AVBPrint *buf)
{
    int ret;
    char *str;

    ret = av_bprint_finalize(buf, &str);
    if (ret < 0)
        return ret;
    if (!av_bprint_is_complete(buf)) {
        av_free(str);
        return AVERROR(ENOMEM);
    }

    par->extradata = str;





    par->extradata_size = buf->len;
    return 0;
}
