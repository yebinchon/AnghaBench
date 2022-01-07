
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; int OptionList; } ;
typedef TYPE_1__ PPP_LCP ;


 int Free (TYPE_1__*) ;
 int FreePPPOptionList (int ) ;

void FreePPPLCP(PPP_LCP *c)
{

 if (c == ((void*)0))
 {
  return;
 }

 FreePPPOptionList(c->OptionList);

 Free(c->Data);

 Free(c);
}
