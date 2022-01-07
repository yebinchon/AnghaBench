
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_2__ {int k; int x; int * s; } ;
typedef int THREAD ;
typedef int SOCK ;
typedef TYPE_1__ CHECK_NETWORK_2 ;


 int Disconnect (int *) ;
 int ReleaseSock (int *) ;
 scalar_t__ Send (int *,scalar_t__*,int,int) ;
 scalar_t__ StartSSL (int *,int ,int ) ;

void CheckNetworkAcceptThread(THREAD *thread, void *param)
{
 CHECK_NETWORK_2 *c = (CHECK_NETWORK_2 *)param;
 SOCK *s = c->s;
 UINT i = 0;

 if (StartSSL(s, c->x, c->k))
 {
  while (1)
  {
   i++;
   if (Send(s, &i, sizeof(UINT), 1) == 0)
   {
    break;
   }
  }
 }

 Disconnect(s);
 ReleaseSock(s);
}
