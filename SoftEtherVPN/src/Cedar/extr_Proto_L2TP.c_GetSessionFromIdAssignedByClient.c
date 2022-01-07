
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ SessionId1; } ;
struct TYPE_6__ {int SessionList; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;


 TYPE_2__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;

L2TP_SESSION *GetSessionFromIdAssignedByClient(L2TP_TUNNEL *t, UINT session_id)
{
 UINT i;

 if (t == ((void*)0) || session_id == 0)
 {
  return ((void*)0);
 }

 for (i = 0;i < LIST_NUM(t->SessionList);i++)
 {
  L2TP_SESSION *s = LIST_DATA(t->SessionList, i);

  if (s->SessionId1 == session_id)
  {
   return s;
  }
 }

 return ((void*)0);
}
