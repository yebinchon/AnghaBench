
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;
typedef int SECURE_SIGN ;
typedef int PACK ;


 int * CncConnect () ;
 int Disconnect (int *) ;
 int FreePack (int *) ;
 int FreeRpcSecureSign (int *) ;
 int InRpcSecureSign (int *,int *) ;
 int * NewPack () ;
 int OutRpcSecureSign (int *,int *) ;
 int PackAddStr (int *,char*,char*) ;
 int PackGetBool (int *,char*) ;
 int * RecvPack (int *) ;
 int ReleaseSock (int *) ;
 int SendPack (int *,int *) ;
 int Zero (int *,int) ;

bool CncSecureSignDlg(SECURE_SIGN *sign)
{
 SOCK *s;
 PACK *p;
 bool ret = 0;

 if (sign == ((void*)0))
 {
  return 0;
 }

 s = CncConnect();
 if (s == ((void*)0))
 {
  return 0;
 }

 p = NewPack();
 PackAddStr(p, "function", "secure_sign");
 OutRpcSecureSign(p, sign);

 SendPack(s, p);
 FreePack(p);

 p = RecvPack(s);
 if (p != ((void*)0))
 {
  ret = PackGetBool(p, "ret");

  if (ret)
  {
   FreeRpcSecureSign(sign);

   Zero(sign, sizeof(SECURE_SIGN));
   InRpcSecureSign(sign, p);
  }

  FreePack(p);
 }

 Disconnect(s);
 ReleaseSock(s);

 return ret;
}
