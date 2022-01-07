
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int X ;
struct TYPE_3__ {int lock; int * ServerK; int * ServerX; } ;
typedef int K ;
typedef TYPE_1__ CEDAR ;


 int * CloneK (int *) ;
 int * CloneX (int *) ;
 int FreeK (int *) ;
 int FreeX (int *) ;
 int Lock (int ) ;
 int Unlock (int ) ;

void SetCedarCert(CEDAR *c, X *server_x, K *server_k)
{

 if (server_x == ((void*)0) || server_k == ((void*)0))
 {
  return;
 }

 Lock(c->lock);
 {
  if (c->ServerX != ((void*)0))
  {
   FreeX(c->ServerX);
  }

  if (c->ServerK != ((void*)0))
  {
   FreeK(c->ServerK);
  }

  c->ServerX = CloneX(server_x);
  c->ServerK = CloneK(server_k);
 }
 Unlock(c->lock);
}
