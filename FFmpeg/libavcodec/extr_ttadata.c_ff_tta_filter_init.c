
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_4__ {int shift; int round; } ;
typedef TYPE_1__ TTAFilter ;


 int * ff_tta_shift_1 ;
 int memset (TYPE_1__*,int ,int) ;

void ff_tta_filter_init(TTAFilter *c, int32_t shift) {
    memset(c, 0, sizeof(TTAFilter));
    c->shift = shift;
    c->round = ff_tta_shift_1[shift-1];
}
