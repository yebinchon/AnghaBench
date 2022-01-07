
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_4__ {scalar_t__ mask; } ;
typedef TYPE_1__ OPLL ;


 int OPLL_reset (TYPE_1__*) ;
 scalar_t__ calloc (int,int) ;
 int maketables (int ,int ) ;

OPLL *OPLL_new(uint32 clk, uint32 rate) {
 OPLL *opll;

 maketables(clk, rate);

 opll = (OPLL*)calloc(sizeof(OPLL), 1);
 if (opll == ((void*)0))
  return ((void*)0);

 opll->mask = 0;

 OPLL_reset(opll);

 return opll;
}
