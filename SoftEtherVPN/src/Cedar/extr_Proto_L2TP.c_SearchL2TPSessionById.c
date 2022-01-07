
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int TunnelList; } ;
struct TYPE_7__ {scalar_t__ SessionId2; int IsV3; } ;
struct TYPE_6__ {int SessionList; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;
typedef TYPE_3__ L2TP_SERVER ;


 scalar_t__ EQUAL_BOOL (int ,int) ;
 void* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

L2TP_SESSION *SearchL2TPSessionById(L2TP_SERVER *l2tp, bool is_v3, UINT id)
{
 UINT i, j;

 if (l2tp == ((void*)0) || id == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(l2tp->TunnelList);i++)
 {
  L2TP_TUNNEL *t = LIST_DATA(l2tp->TunnelList, i);

  for (j = 0;j < LIST_NUM(t->SessionList);j++)
  {
   L2TP_SESSION *s = LIST_DATA(t->SessionList, j);

   if (s->SessionId2 == id)
   {
    if (EQUAL_BOOL(s->IsV3, is_v3))
    {
     return s;
    }
   }
  }
 }

 return ((void*)0);
}
