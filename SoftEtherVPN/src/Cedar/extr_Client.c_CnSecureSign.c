
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sign ;
typedef int SOCK ;
typedef int SECURE_SIGN ;
typedef int PACK ;


 int FreePack (int *) ;
 int FreeRpcSecureSign (int *) ;
 int InRpcSecureSign (int *,int *) ;
 int * NewPack () ;
 int OutRpcSecureSign (int *,int *) ;
 int PackAddBool (int *,char*,int) ;
 int SendPack (int *,int *) ;
 int Win32CiSecureSign (int *) ;
 int Zero (int *,int) ;

void CnSecureSign(SOCK *s, PACK *p)
{
 SECURE_SIGN sign;
 bool ret = 0;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(&sign, sizeof(sign));
 InRpcSecureSign(&sign, p);






 ret = 0;


 p = NewPack();

 OutRpcSecureSign(p, &sign);
 FreeRpcSecureSign(&sign);

 PackAddBool(p, "ret", ret);

 SendPack(s, p);
 FreePack(p);
}
