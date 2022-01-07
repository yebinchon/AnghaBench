
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_13__ {TYPE_1__* Server; } ;
struct TYPE_12__ {int lock; } ;
struct TYPE_11__ {int String; } ;
struct TYPE_10__ {TYPE_3__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_STR ;
typedef TYPE_3__ CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int Lock (int ) ;
 int SERVER_ADMIN_ONLY ;
 int SetCedarCipherList (TYPE_3__*,int ) ;
 int StrUpper (int ) ;
 int Unlock (int ) ;

UINT StSetServerCipher(ADMIN *a, RPC_STR *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;

 if (IsEmptyStr(t->String))
 {
  return ERR_INVALID_PARAMETER;
 }

 SERVER_ADMIN_ONLY;

 StrUpper(t->String);

 ALog(a, ((void*)0), "LA_SET_SERVER_CIPHER", t->String);

 Lock(c->lock);
 {
  SetCedarCipherList(c, t->String);
 }
 Unlock(c->lock);

 IncrementServerConfigRevision(s);

 return ERR_NO_ERROR;
}
