
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC ;


 int EndRpc (int *) ;

void NatAdminDisconnect(RPC *r)
{

 if (r == ((void*)0))
 {
  return;
 }

 EndRpc(r);
}
