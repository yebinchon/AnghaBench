
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPC_CLIENT_CREATE_ACCOUNT ;
typedef int BUF ;


 int * CiCfgToAccount (int *) ;
 int CiFreeClientCreateAccount (int *) ;
 int Free (int *) ;

bool CiTryToParseAccount(BUF *b)
{
 RPC_CLIENT_CREATE_ACCOUNT *a;

 if (b == ((void*)0))
 {
  return 0;
 }

 a = CiCfgToAccount(b);
 if (a != ((void*)0))
 {
  CiFreeClientCreateAccount(a);
  Free(a);

  return 1;
 }
 else
 {
  return 0;
 }
}
