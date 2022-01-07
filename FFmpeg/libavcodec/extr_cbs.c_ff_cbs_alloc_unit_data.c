
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data; } ;
struct TYPE_4__ {size_t data_size; scalar_t__ data; TYPE_3__* data_ref; } ;
typedef TYPE_1__ CodedBitstreamUnit ;
typedef int CodedBitstreamContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ;
 int ENOMEM ;
 int av_assert0 (int) ;
 TYPE_3__* av_buffer_alloc (scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;

int ff_cbs_alloc_unit_data(CodedBitstreamContext *ctx,
                           CodedBitstreamUnit *unit,
                           size_t size)
{
    av_assert0(!unit->data && !unit->data_ref);

    unit->data_ref = av_buffer_alloc(size + AV_INPUT_BUFFER_PADDING_SIZE);
    if (!unit->data_ref)
        return AVERROR(ENOMEM);

    unit->data = unit->data_ref->data;
    unit->data_size = size;

    memset(unit->data + size, 0, AV_INPUT_BUFFER_PADDING_SIZE);

    return 0;
}
