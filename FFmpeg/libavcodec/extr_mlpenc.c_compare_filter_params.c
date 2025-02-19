
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__** coeff; TYPE_1__* filter_params; } ;
struct TYPE_5__ {int order; scalar_t__ shift; } ;
typedef TYPE_1__ FilterParams ;
typedef TYPE_2__ ChannelParams ;



__attribute__((used)) static int compare_filter_params(const ChannelParams *prev_cp, const ChannelParams *cp, int filter)
{
    const FilterParams *prev = &prev_cp->filter_params[filter];
    const FilterParams *fp = &cp->filter_params[filter];
    int i;

    if (prev->order != fp->order)
        return 1;

    if (!prev->order)
        return 0;

    if (prev->shift != fp->shift)
        return 1;

    for (i = 0; i < fp->order; i++)
        if (prev_cp->coeff[filter][i] != cp->coeff[filter][i])
            return 1;

    return 0;
}
