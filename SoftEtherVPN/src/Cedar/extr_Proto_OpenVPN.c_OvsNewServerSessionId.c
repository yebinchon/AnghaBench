
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int SessionList; } ;
struct TYPE_5__ {scalar_t__ ServerSessionId; } ;
typedef TYPE_1__ OPENVPN_SESSION ;
typedef TYPE_2__ OPENVPN_SERVER ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 scalar_t__ Rand64 () ;

UINT64 OvsNewServerSessionId(OPENVPN_SERVER *s)
{

 if (s == ((void*)0))
 {
  return 0;
 }

 while (1)
 {
  UINT64 id = Rand64();
  UINT i;
  bool exists = 0;

  if (id == 0 || id == (UINT64)(0xFFFFFFFFFFFFFFFFULL))
  {
   continue;
  }

  for (i = 0;i < LIST_NUM(s->SessionList);i++)
  {
   OPENVPN_SESSION *se = LIST_DATA(s->SessionList, i);
   if (se->ServerSessionId == id)
   {
    exists = 1;
   }
  }

  if (exists == 0)
  {
   return id;
  }
 }
}
