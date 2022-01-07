
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int extradata_size; int * extradata; } ;
typedef int AVIOContext ;
typedef TYPE_1__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int INT_MAX ;
 int * av_realloc (int *,scalar_t__) ;
 int avio_read (int *,int *,int) ;

__attribute__((used)) static int append_extradata(AVCodecParameters *par, AVIOContext *pb, int len)
{
    int previous_size = par->extradata_size;
    int new_size, ret;
    uint8_t *new_extradata;

    if (previous_size > INT_MAX - len)
        return AVERROR_INVALIDDATA;

    new_size = previous_size + len;
    new_extradata = av_realloc(par->extradata, new_size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!new_extradata)
        return AVERROR(ENOMEM);
    par->extradata = new_extradata;
    par->extradata_size = new_size;

    if ((ret = avio_read(pb, par->extradata + previous_size, len)) < 0)
        return ret;

    return previous_size;
}
