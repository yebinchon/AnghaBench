
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_units; int nb_units_allocated; int * units; } ;
typedef int CodedBitstreamUnit ;
typedef TYPE_1__ CodedBitstreamFragment ;
typedef int CodedBitstreamContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 int av_free (int *) ;
 int * av_malloc_array (int,int) ;
 int memcpy (int *,int *,int) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int cbs_insert_unit(CodedBitstreamContext *ctx,
                           CodedBitstreamFragment *frag,
                           int position)
{
    CodedBitstreamUnit *units;

    if (frag->nb_units < frag->nb_units_allocated) {
        units = frag->units;

        if (position < frag->nb_units)
            memmove(units + position + 1, units + position,
                    (frag->nb_units - position) * sizeof(*units));
    } else {
        units = av_malloc_array(frag->nb_units + 1, sizeof(*units));
        if (!units)
            return AVERROR(ENOMEM);

        ++frag->nb_units_allocated;

        if (position > 0)
            memcpy(units, frag->units, position * sizeof(*units));

        if (position < frag->nb_units)
            memcpy(units + position + 1, frag->units + position,
                   (frag->nb_units - position) * sizeof(*units));
    }

    memset(units + position, 0, sizeof(*units));

    if (units != frag->units) {
        av_free(frag->units);
        frag->units = units;
    }

    ++frag->nb_units;

    return 0;
}
