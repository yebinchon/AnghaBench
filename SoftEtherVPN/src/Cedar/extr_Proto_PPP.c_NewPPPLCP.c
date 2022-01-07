
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* UCHAR ;
struct TYPE_4__ {int OptionList; void* Id; void* Code; } ;
typedef TYPE_1__ PPP_LCP ;


 int NewListFast (int *) ;
 TYPE_1__* ZeroMalloc (int) ;

PPP_LCP *NewPPPLCP(UCHAR code, UCHAR id)
{
 PPP_LCP *c = ZeroMalloc(sizeof(PPP_LCP));

 c->Code = code;
 c->Id = id;
 c->OptionList = NewListFast(((void*)0));

 return c;
}
