
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {TYPE_1__* Server; } ;
struct TYPE_11__ {int lock; int CipherList; } ;
struct TYPE_10__ {int String; } ;
struct TYPE_9__ {TYPE_3__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_STR ;
typedef TYPE_3__ CEDAR ;
typedef TYPE_4__ ADMIN ;


 int CopyStr (int ) ;
 int ERR_NO_ERROR ;
 int FreeRpcStr (TYPE_2__*) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Zero (TYPE_2__*,int) ;

UINT StGetServerCipher(ADMIN *a, RPC_STR *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;

 FreeRpcStr(t);
 Zero(t, sizeof(RPC_STR));

 Lock(c->lock);
 {
  t->String = CopyStr(c->CipherList);
 }
 Unlock(c->lock);

 return ERR_NO_ERROR;
}
