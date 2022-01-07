
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int lambda; TYPE_1__* coder; } ;
struct TYPE_12__ {int num_windows; scalar_t__* group_len; } ;
struct TYPE_13__ {TYPE_2__ ics; } ;
struct TYPE_11__ {int (* encode_window_bands_info ) (TYPE_4__*,TYPE_3__*,int,scalar_t__,int ) ;int (* set_special_band_scalefactors ) (TYPE_4__*,TYPE_3__*) ;} ;
typedef TYPE_3__ SingleChannelElement ;
typedef TYPE_4__ AACEncContext ;


 int stub1 (TYPE_4__*,TYPE_3__*) ;
 int stub2 (TYPE_4__*,TYPE_3__*,int,scalar_t__,int ) ;

__attribute__((used)) static void encode_band_info(AACEncContext *s, SingleChannelElement *sce)
{
    int w;

    if (s->coder->set_special_band_scalefactors)
        s->coder->set_special_band_scalefactors(s, sce);

    for (w = 0; w < sce->ics.num_windows; w += sce->ics.group_len[w])
        s->coder->encode_window_bands_info(s, sce, w, sce->ics.group_len[w], s->lambda);
}
