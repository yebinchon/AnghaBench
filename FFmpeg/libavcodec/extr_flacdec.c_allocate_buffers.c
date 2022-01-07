
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int max_blocksize; int channels; } ;
struct TYPE_5__ {TYPE_1__ flac_stream_info; int decoded_buffer; scalar_t__ decoded; int decoded_buffer_size; } ;
typedef TYPE_2__ FLACContext ;


 int AVERROR (int ) ;
 int AV_SAMPLE_FMT_S32P ;
 int ENOMEM ;
 int av_assert0 (int ) ;
 int av_fast_malloc (int *,int *,int) ;
 int av_samples_fill_arrays (int **,int *,int ,int ,int ,int ,int ) ;
 int av_samples_get_buffer_size (int *,int ,int ,int ,int ) ;

__attribute__((used)) static int allocate_buffers(FLACContext *s)
{
    int buf_size;
    int ret;

    av_assert0(s->flac_stream_info.max_blocksize);

    buf_size = av_samples_get_buffer_size(((void*)0), s->flac_stream_info.channels,
                                          s->flac_stream_info.max_blocksize,
                                          AV_SAMPLE_FMT_S32P, 0);
    if (buf_size < 0)
        return buf_size;

    av_fast_malloc(&s->decoded_buffer, &s->decoded_buffer_size, buf_size);
    if (!s->decoded_buffer)
        return AVERROR(ENOMEM);

    ret = av_samples_fill_arrays((uint8_t **)s->decoded, ((void*)0),
                                 s->decoded_buffer,
                                 s->flac_stream_info.channels,
                                 s->flac_stream_info.max_blocksize,
                                 AV_SAMPLE_FMT_S32P, 0);
    return ret < 0 ? ret : 0;
}
