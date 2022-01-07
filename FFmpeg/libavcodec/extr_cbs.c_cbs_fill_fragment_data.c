
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {size_t data_size; scalar_t__ data; TYPE_3__* data_ref; } ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int av_assert0 (int) ;
 TYPE_3__* av_buffer_alloc (scalar_t__) ;
 int memcpy (scalar_t__,int const*,size_t) ;
 int memset (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static int cbs_fill_fragment_data(CodedBitstreamContext *ctx,
                                  CodedBitstreamFragment *frag,
                                  const uint8_t *data, size_t size)
{
    av_assert0(!frag->data && !frag->data_ref);

    frag->data_ref =
        av_buffer_alloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!frag->data_ref)
        return AVERROR(ENOMEM);

    frag->data = frag->data_ref->data;
    frag->data_size = size;

    memcpy(frag->data, data, size);
    memset(frag->data + size, 0,
           AV_INPUT_BUFFER_PADDING_SIZE);

    return 0;
}
