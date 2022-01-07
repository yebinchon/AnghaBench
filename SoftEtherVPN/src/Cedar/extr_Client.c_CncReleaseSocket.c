
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;
typedef int PACK ;


 int * CncConnect () ;
 int Disconnect (int *) ;
 int FreePack (int *) ;
 int MsGetProcessId () ;
 int * NewPack () ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int ReleaseSock (int *) ;
 int SendPack (int *,int *) ;

void CncReleaseSocket()
{
 SOCK *s = CncConnect();
 PACK *p;
 if (s == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "function", "release_socket");





 SendPack(s, p);
 FreePack(p);

 Disconnect(s);
 ReleaseSock(s);
}
