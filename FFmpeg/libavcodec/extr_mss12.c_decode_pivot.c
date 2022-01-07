
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int (* get_model_sym ) (TYPE_2__*,int *) ;int (* get_number ) (TYPE_2__*,int) ;} ;
struct TYPE_8__ {int pivot; int edge_mode; } ;
typedef TYPE_1__ SliceContext ;
typedef TYPE_2__ ArithCoder ;


 int stub1 (TYPE_2__*,int *) ;
 int stub2 (TYPE_2__*,int *) ;
 int stub3 (TYPE_2__*,int) ;

__attribute__((used)) static int decode_pivot(SliceContext *sc, ArithCoder *acoder, int base)
{
    int val, inv;

    inv = acoder->get_model_sym(acoder, &sc->edge_mode);
    val = acoder->get_model_sym(acoder, &sc->pivot) + 1;

    if (val > 2) {
        if ((base + 1) / 2 - 2 <= 0)
            return -1;

        val = acoder->get_number(acoder, (base + 1) / 2 - 2) + 3;
    }

    if ((unsigned)val >= base)
        return -1;

    return inv ? base - val : val;
}
