
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_16__ {TYPE_2__* Server; } ;
struct TYPE_15__ {int lock; } ;
struct TYPE_14__ {int String; } ;
struct TYPE_13__ {TYPE_4__* Cedar; } ;
struct TYPE_12__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ RPC_STR ;
typedef TYPE_4__ CEDAR ;
typedef TYPE_5__ ADMIN ;


 size_t ERR_NO_ERROR ;
 int FreeRpcStr (TYPE_3__*) ;
 int FreeToken (TYPE_1__*) ;
 TYPE_1__* GetCipherList () ;
 int Lock (int ) ;
 int Malloc (size_t) ;
 int ReAlloc (int ,size_t) ;
 int StrCat (int ,size_t,char*) ;
 int StrCpy (int ,size_t,char*) ;
 size_t StrSize (char*) ;
 int Unlock (int ) ;
 int Zero (TYPE_3__*,int) ;

UINT StGetServerCipherList(ADMIN *a, RPC_STR *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;

 FreeRpcStr(t);
 Zero(t, sizeof(RPC_STR));

 Lock(c->lock);
 {
  UINT i;
  TOKEN_LIST *ciphers = GetCipherList();
  if (ciphers->NumTokens > 0)
  {
   UINT size = StrSize(ciphers->Token[0]);
   t->String = Malloc(size);
   StrCpy(t->String, size, ciphers->Token[0]);
   i = 1;

   for (; i < ciphers->NumTokens; i++)
   {

    size += StrSize(ciphers->Token[i]);
    t->String = ReAlloc(t->String, size);
    StrCat(t->String, size, ";");
    StrCat(t->String, size, ciphers->Token[i]);
   }
  }

  FreeToken(ciphers);
 }
 Unlock(c->lock);

 return ERR_NO_ERROR;
}
