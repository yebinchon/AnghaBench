
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int TableList; } ;
struct TYPE_6__ {scalar_t__ NetworkAddress; scalar_t__ SubnetMask; scalar_t__ Metric; } ;
typedef TYPE_1__ L3TABLE ;
typedef TYPE_2__ L3SW ;


 scalar_t__ INFINITE ;
 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

L3TABLE *L3GetBestRoute(L3SW *s, UINT ip)
{
 UINT i;
 UINT max_mask = 0;
 UINT min_metric = INFINITE;
 L3TABLE *ret = ((void*)0);

 if (s == ((void*)0) || ip == 0)
 {
  return ((void*)0);
 }



 for (i = 0;i < LIST_NUM(s->TableList);i++)
 {
  L3TABLE *t = LIST_DATA(s->TableList, i);

  if ((t->NetworkAddress & t->SubnetMask) == (ip & t->SubnetMask))
  {
   if (t->SubnetMask >= max_mask)
   {
    max_mask = t->SubnetMask;
    if (min_metric >= t->Metric)
    {
     min_metric = t->Metric;
     ret = t;
    }
   }
  }
 }

 return ret;
}
