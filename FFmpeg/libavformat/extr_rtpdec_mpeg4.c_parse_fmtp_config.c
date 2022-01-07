
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * extradata; } ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_freep (int **) ;
 scalar_t__ ff_alloc_extradata (TYPE_1__*,int) ;
 int ff_hex_to_data (int *,char const*) ;

__attribute__((used)) static int parse_fmtp_config(AVCodecParameters *par, const char *value)
{

    int len = ff_hex_to_data(((void*)0), value);
    av_freep(&par->extradata);
    if (ff_alloc_extradata(par, len))
        return AVERROR(ENOMEM);
    ff_hex_to_data(par->extradata, value);
    return 0;
}
