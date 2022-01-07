
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_7__ {int OptionList; } ;
struct TYPE_6__ {scalar_t__ Type; } ;
typedef TYPE_1__ PPP_OPTION ;
typedef TYPE_2__ PPP_LCP ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

PPP_OPTION *GetOptionValue(PPP_LCP *c, UCHAR type)
{
 UINT i;

 if (c == ((void*)0))
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(c->OptionList);i++)
 {
  PPP_OPTION *t = LIST_DATA(c->OptionList, i);

  if (t->Type == type)
  {
   return t;
  }
 }

 return ((void*)0);
}
