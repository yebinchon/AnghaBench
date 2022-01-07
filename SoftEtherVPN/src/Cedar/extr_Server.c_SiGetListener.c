
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int ServerListenerList; } ;
struct TYPE_6__ {scalar_t__ Port; } ;
typedef TYPE_1__ SERVER_LISTENER ;
typedef TYPE_2__ SERVER ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

SERVER_LISTENER *SiGetListener(SERVER *s, UINT port)
{
 UINT i;

 if (s == ((void*)0) || port == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(s->ServerListenerList);i++)
 {
  SERVER_LISTENER *e = LIST_DATA(s->ServerListenerList, i);
  if (e->Port == port)
  {
   return e;
  }
 }

 return ((void*)0);
}
