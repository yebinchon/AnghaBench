
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_6__ {scalar_t__ extradata_size; int extradata; } ;
struct TYPE_5__ {scalar_t__ size; } ;
typedef TYPE_1__ MOVAtom ;
typedef TYPE_2__ AVCodecParameters ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 scalar_t__ INT_MAX ;
 int av_reallocp (int *,scalar_t__) ;

__attribute__((used)) static int mov_realloc_extradata(AVCodecParameters *par, MOVAtom atom)
{
    int err = 0;
    uint64_t size = (uint64_t)par->extradata_size + atom.size + 8 + AV_INPUT_BUFFER_PADDING_SIZE;
    if (size > INT_MAX || (uint64_t)atom.size > INT_MAX)
        return AVERROR_INVALIDDATA;
    if ((err = av_reallocp(&par->extradata, size)) < 0) {
        par->extradata_size = 0;
        return err;
    }
    par->extradata_size = size - AV_INPUT_BUFFER_PADDING_SIZE;
    return 0;
}
