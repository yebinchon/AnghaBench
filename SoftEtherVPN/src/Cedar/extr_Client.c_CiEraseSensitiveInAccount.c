
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int Size; int Buf; } ;
struct TYPE_16__ {TYPE_1__* ClientAuth; } ;
struct TYPE_15__ {scalar_t__ AuthType; int Username; int PlainPassword; int HashedPassword; } ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef TYPE_3__ BUF ;


 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ;
 scalar_t__ CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 TYPE_3__* CiAccountToCfg (TYPE_2__*) ;
 TYPE_2__* CiCfgToAccount (TYPE_3__*) ;
 int CiFreeClientCreateAccount (TYPE_2__*) ;
 int ClearBuf (TYPE_3__*) ;
 int ClearStr (int ,int) ;
 int Free (TYPE_2__*) ;
 int FreeBuf (TYPE_3__*) ;
 int SeekBuf (TYPE_3__*,int ,int ) ;
 int WriteBuf (TYPE_3__*,int ,int ) ;
 int Zero (int ,int) ;

bool CiEraseSensitiveInAccount(BUF *b)
{
 RPC_CLIENT_CREATE_ACCOUNT *a;
 BUF *b2;
 bool ret = 0;

 if (b == ((void*)0))
 {
  return 0;
 }

 a = CiCfgToAccount(b);
 if (a == ((void*)0))
 {
  return 0;
 }

 if (a->ClientAuth->AuthType == CLIENT_AUTHTYPE_PASSWORD)
 {
  Zero(a->ClientAuth->HashedPassword, sizeof(a->ClientAuth->HashedPassword));
  ClearStr(a->ClientAuth->Username, sizeof(a->ClientAuth->Username));
 }
 else if (a->ClientAuth->AuthType == CLIENT_AUTHTYPE_PLAIN_PASSWORD)
 {
  ClearStr(a->ClientAuth->PlainPassword, sizeof(a->ClientAuth->PlainPassword));
  ClearStr(a->ClientAuth->Username, sizeof(a->ClientAuth->Username));
 }

 b2 = CiAccountToCfg(a);
 if (b2 != ((void*)0))
 {
  ret = 1;

  ClearBuf(b);

  WriteBuf(b, b2->Buf, b2->Size);
  SeekBuf(b, 0, 0);

  FreeBuf(b2);
 }

 CiFreeClientCreateAccount(a);
 Free(a);

 return ret;
}
