
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int nb_units; TYPE_1__* units; } ;
struct TYPE_5__ {size_t data_size; int * data_ref; int * data; int type; } ;
typedef int CodedBitstreamUnitType ;
typedef TYPE_1__ CodedBitstreamUnit ;
typedef TYPE_2__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int * av_buffer_create (int *,size_t,int *,int *,int ) ;
 int * av_buffer_ref (int *) ;
 int av_buffer_unref (int **) ;
 int cbs_insert_unit (int *,TYPE_2__*,int) ;

int ff_cbs_insert_unit_data(CodedBitstreamContext *ctx,
                            CodedBitstreamFragment *frag,
                            int position,
                            CodedBitstreamUnitType type,
                            uint8_t *data, size_t data_size,
                            AVBufferRef *data_buf)
{
    CodedBitstreamUnit *unit;
    AVBufferRef *data_ref;
    int err;

    if (position == -1)
        position = frag->nb_units;
    av_assert0(position >= 0 && position <= frag->nb_units);

    if (data_buf)
        data_ref = av_buffer_ref(data_buf);
    else
        data_ref = av_buffer_create(data, data_size, ((void*)0), ((void*)0), 0);
    if (!data_ref)
        return AVERROR(ENOMEM);

    err = cbs_insert_unit(ctx, frag, position);
    if (err < 0) {
        av_buffer_unref(&data_ref);
        return err;
    }

    unit = &frag->units[position];
    unit->type = type;
    unit->data = data;
    unit->data_size = data_size;
    unit->data_ref = data_ref;

    return 0;
}
