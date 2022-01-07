
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {int quality; } ;
typedef TYPE_1__ OPLL ;


 int OPLL_set_rate (TYPE_1__*,int ) ;
 int rate ;

void OPLL_set_quality(OPLL * opll, uint32 q) {
 opll->quality = q;
 OPLL_set_rate(opll, rate);
}
