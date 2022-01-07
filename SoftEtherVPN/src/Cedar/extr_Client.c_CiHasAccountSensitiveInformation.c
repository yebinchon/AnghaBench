
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* ClientAuth; } ;
struct TYPE_6__ {scalar_t__ AuthType; } ;
typedef TYPE_2__ RPC_CLIENT_CREATE_ACCOUNT ;
typedef int BUF ;


 scalar_t__ CLIENT_AUTHTYPE_PASSWORD ;
 scalar_t__ CLIENT_AUTHTYPE_PLAIN_PASSWORD ;
 TYPE_2__* CiCfgToAccount (int *) ;
 int CiFreeClientCreateAccount (TYPE_2__*) ;
 int Free (TYPE_2__*) ;

bool CiHasAccountSensitiveInformation(BUF *b)
{
 RPC_CLIENT_CREATE_ACCOUNT *a;
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
  ret = 1;
 }
 else if (a->ClientAuth->AuthType == CLIENT_AUTHTYPE_PLAIN_PASSWORD)
 {
  ret = 1;
 }

 CiFreeClientCreateAccount(a);
 Free(a);

 return ret;
}
