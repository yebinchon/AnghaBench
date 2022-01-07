
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int IsV3; TYPE_1__* Tunnel; int IsCiscoV3; scalar_t__ SessionId2; scalar_t__ SessionId1; } ;
struct TYPE_7__ {int IsV3; int IsCiscoV3; int SessionList; } ;
typedef TYPE_1__ L2TP_TUNNEL ;
typedef TYPE_2__ L2TP_SESSION ;
typedef int L2TP_SERVER ;


 scalar_t__ GenerateNewSessionIdEx (TYPE_1__*,int) ;
 scalar_t__ GenerateNewSessionIdForL2TPv3 (int *) ;
 scalar_t__ L2TP_QUOTA_MAX_NUM_SESSIONS_PER_TUNNEL ;
 scalar_t__ LIST_NUM (int ) ;
 TYPE_2__* ZeroMalloc (int) ;

L2TP_SESSION *NewL2TPSession(L2TP_SERVER *l2tp, L2TP_TUNNEL *t, UINT session_id_by_client)
{
 L2TP_SESSION *s;
 UINT session_id_by_server;

 if (l2tp == ((void*)0) || t == ((void*)0) || session_id_by_client == 0)
 {
  return ((void*)0);
 }

 if (LIST_NUM(t->SessionList) >= L2TP_QUOTA_MAX_NUM_SESSIONS_PER_TUNNEL)
 {
  return ((void*)0);
 }

 if (t->IsV3 == 0)
 {
  session_id_by_server = GenerateNewSessionIdEx(t, t->IsV3);
 }
 else
 {
  session_id_by_server = GenerateNewSessionIdForL2TPv3(l2tp);
 }
 if (session_id_by_server == 0)
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(L2TP_SESSION));

 s->SessionId1 = session_id_by_client;
 s->SessionId2 = session_id_by_server;

 s->IsV3 = t->IsV3;
 s->IsCiscoV3 = t->IsCiscoV3;

 s->Tunnel = t;

 return s;
}
