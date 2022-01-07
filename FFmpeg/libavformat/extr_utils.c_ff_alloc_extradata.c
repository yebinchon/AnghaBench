
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int extradata_size; scalar_t__ extradata; } ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AV_INPUT_BUFFER_PADDING_SIZE ;
 int EINVAL ;
 int ENOMEM ;
 int INT32_MAX ;
 int av_freep (scalar_t__*) ;
 scalar_t__ av_malloc (int) ;
 int memset (scalar_t__,int ,int) ;

int ff_alloc_extradata(AVCodecParameters *par, int size)
{
    av_freep(&par->extradata);
    par->extradata_size = 0;

    if (size < 0 || size >= INT32_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return AVERROR(EINVAL);

    par->extradata = av_malloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!par->extradata)
        return AVERROR(ENOMEM);

    memset(par->extradata + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    par->extradata_size = size;

    return 0;
}
