
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int cache_size; int * buffer_ptr; int * buffer; int * soi_ptr; int buffer_size; } ;
typedef TYPE_1__ MXGContext ;
typedef TYPE_2__ AVFormatContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int * av_fast_realloc (int *,int *,scalar_t__) ;
 int avio_read (int ,int *,int) ;

__attribute__((used)) static int mxg_update_cache(AVFormatContext *s, unsigned int cache_size)
{
    MXGContext *mxg = s->priv_data;
    unsigned int current_pos = mxg->buffer_ptr - mxg->buffer;
    unsigned int soi_pos;
    uint8_t *buffer;
    int ret;


    if (current_pos > current_pos + cache_size)
        return AVERROR(ENOMEM);
    soi_pos = mxg->soi_ptr - mxg->buffer;
    buffer = av_fast_realloc(mxg->buffer, &mxg->buffer_size,
                             current_pos + cache_size +
                             AV_INPUT_BUFFER_PADDING_SIZE);
    if (!buffer)
        return AVERROR(ENOMEM);
    mxg->buffer = buffer;
    mxg->buffer_ptr = mxg->buffer + current_pos;
    if (mxg->soi_ptr) mxg->soi_ptr = mxg->buffer + soi_pos;


    ret = avio_read(s->pb, mxg->buffer_ptr + mxg->cache_size,
                     cache_size - mxg->cache_size);
    if (ret < 0)
        return ret;

    mxg->cache_size += ret;

    return ret;
}
