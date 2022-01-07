
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data_bit_padding; scalar_t__ data_size; int * data; int data_ref; int * content; int content_ref; } ;
typedef TYPE_1__ CodedBitstreamUnit ;
typedef int CodedBitstreamContext ;


 int av_buffer_unref (int *) ;

__attribute__((used)) static void cbs_unit_uninit(CodedBitstreamContext *ctx,
                            CodedBitstreamUnit *unit)
{
    av_buffer_unref(&unit->content_ref);
    unit->content = ((void*)0);

    av_buffer_unref(&unit->data_ref);
    unit->data = ((void*)0);
    unit->data_size = 0;
    unit->data_bit_padding = 0;
}
