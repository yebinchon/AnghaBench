
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_3__ {scalar_t__ quality; } ;
typedef TYPE_1__ OPLL ;


 int internal_refresh () ;
 int rate ;

void OPLL_set_rate(OPLL * opll, uint32 r) {
 if (opll->quality)
  rate = 49716;
 else
  rate = r;
 internal_refresh();
 rate = r;
}
