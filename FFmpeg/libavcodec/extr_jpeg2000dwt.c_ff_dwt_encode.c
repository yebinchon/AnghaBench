
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ndeclevels; int type; } ;
typedef TYPE_1__ DWTContext ;





 int dwt_encode53 (TYPE_1__*,void*) ;
 int dwt_encode97_float (TYPE_1__*,void*) ;
 int dwt_encode97_int (TYPE_1__*,void*) ;

int ff_dwt_encode(DWTContext *s, void *t)
{
    if (s->ndeclevels == 0)
        return 0;

    switch(s->type){
        case 129:
            dwt_encode97_float(s, t); break;
        case 128:
            dwt_encode97_int(s, t); break;
        case 130:
            dwt_encode53(s, t); break;
        default:
            return -1;
    }
    return 0;
}
