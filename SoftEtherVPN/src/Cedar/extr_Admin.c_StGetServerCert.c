
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {int ServerAdmin; TYPE_1__* Server; } ;
struct TYPE_11__ {int lock; int ServerK; int ServerX; } ;
struct TYPE_10__ {int Key; int Cert; } ;
struct TYPE_9__ {TYPE_3__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_KEY_PAIR ;
typedef TYPE_3__ CEDAR ;
typedef TYPE_4__ ADMIN ;


 int CloneK (int ) ;
 int CloneX (int ) ;
 int ERR_NO_ERROR ;
 int FreeRpcKeyPair (TYPE_2__*) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetServerCert(ADMIN *a, RPC_KEY_PAIR *t)
{
 bool admin;
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 bool is_vgs_cert = 0;

 admin = a->ServerAdmin;

 FreeRpcKeyPair(t);
 Zero(t, sizeof(RPC_KEY_PAIR));

 Lock(c->lock);
 {

  t->Cert = CloneX(c->ServerX);
  if (admin && is_vgs_cert == 0)
  {
   t->Key = CloneK(c->ServerK);
  }
 }
 Unlock(c->lock);

 return ERR_NO_ERROR;
}
