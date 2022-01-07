
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ overread; int (* get_model_sym ) (TYPE_3__*,int *) ;} ;
struct TYPE_14__ {TYPE_1__* c; int split_mode; } ;
struct TYPE_13__ {int keyframe; } ;
typedef TYPE_2__ SliceContext ;
typedef TYPE_3__ ArithCoder ;


 int AVERROR_INVALIDDATA ;
 scalar_t__ MAX_OVERREAD ;



 int decode_pivot (TYPE_2__*,TYPE_3__*,int) ;
 int decode_region_inter (TYPE_2__*,TYPE_3__*,int,int,int,int) ;
 int decode_region_intra (TYPE_2__*,TYPE_3__*,int,int,int,int) ;
 int stub1 (TYPE_3__*,int *) ;

int ff_mss12_decode_rect(SliceContext *sc, ArithCoder *acoder,
                         int x, int y, int width, int height)
{
    int mode, pivot;
    if (acoder->overread > MAX_OVERREAD)
        return AVERROR_INVALIDDATA;

    mode = acoder->get_model_sym(acoder, &sc->split_mode);

    switch (mode) {
    case 128:
        if ((pivot = decode_pivot(sc, acoder, height)) < 1)
            return -1;
        if (ff_mss12_decode_rect(sc, acoder, x, y, width, pivot))
            return -1;
        if (ff_mss12_decode_rect(sc, acoder, x, y + pivot, width, height - pivot))
            return -1;
        break;
    case 130:
        if ((pivot = decode_pivot(sc, acoder, width)) < 1)
            return -1;
        if (ff_mss12_decode_rect(sc, acoder, x, y, pivot, height))
            return -1;
        if (ff_mss12_decode_rect(sc, acoder, x + pivot, y, width - pivot, height))
            return -1;
        break;
    case 129:
        if (sc->c->keyframe)
            return decode_region_intra(sc, acoder, x, y, width, height);
        else
            return decode_region_inter(sc, acoder, x, y, width, height);
    default:
        return -1;
    }

    return 0;
}
