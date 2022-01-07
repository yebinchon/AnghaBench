
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int unsigned_rung; int els_ctx; } ;
typedef TYPE_1__ ePICContext ;


 int TOSIGNED (unsigned int) ;
 unsigned int ff_els_decode_unsigned (int *,int *) ;
 int mid_pred (int,int,int) ;

__attribute__((used)) static inline int epic_decode_component_pred(ePICContext *dc,
                                             int N, int W, int NW)
{
    unsigned delta = ff_els_decode_unsigned(&dc->els_ctx, &dc->unsigned_rung);
    return mid_pred(N, N + W - NW, W) - TOSIGNED(delta);
}
