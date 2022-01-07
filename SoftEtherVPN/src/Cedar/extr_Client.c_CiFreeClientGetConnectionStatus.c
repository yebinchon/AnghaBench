
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ClientX; int * ServerX; } ;
typedef TYPE_1__ RPC_CLIENT_GET_CONNECTION_STATUS ;


 int FreeX (int *) ;

void CiFreeClientGetConnectionStatus(RPC_CLIENT_GET_CONNECTION_STATUS *st)
{

 if (st == ((void*)0))
 {
  return;
 }

 if (st->ServerX != ((void*)0))
 {
  FreeX(st->ServerX);
 }

 if (st->ClientX != ((void*)0))
 {
  FreeX(st->ClientX);
 }
}
