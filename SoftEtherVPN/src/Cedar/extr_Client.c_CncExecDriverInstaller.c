
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;
typedef int PACK ;


 int * CncConnect () ;
 int Disconnect (int *) ;
 int FreePack (int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int PackGetBool (int *,char*) ;
 int * RecvPack (int *) ;
 int ReleaseSock (int *) ;
 int SendPack (int *,int *) ;

bool CncExecDriverInstaller(char *arg)
{
 SOCK *s = CncConnect();
 PACK *p;
 bool ret;
 if (s == ((void*)0))
 {
  return 0;
 }

 p = NewPack();
 PackAddStr(p, "function", "exec_driver_installer");
 PackAddStr(p, "arg", arg);

 SendPack(s, p);
 FreePack(p);

 p = RecvPack(s);
 if (p == ((void*)0))
 {
  Disconnect(s);
  ReleaseSock(s);
  return 0;
 }

 ret = PackGetBool(p, "ret");

 FreePack(p);

 Disconnect(s);
 ReleaseSock(s);

 return ret;
}
