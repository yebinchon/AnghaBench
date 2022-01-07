
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;
typedef int PACK ;


 int * CncConnectEx (int) ;
 int Disconnect (int *) ;
 int FreePack (int *) ;
 int MsKillOtherInstanceEx (char*) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int * RecvPack (int *) ;
 int ReleaseSock (int *) ;
 int SendPack (int *,int *) ;

void CncExit()
{
 SOCK *s = CncConnectEx(256);
 PACK *p;
 if (s != ((void*)0))
 {
  p = NewPack();
  PackAddStr(p, "function", "exit");

  SendPack(s, p);

  FreePack(p);

  FreePack(RecvPack(s));

  Disconnect(s);
  ReleaseSock(s);
 }




}
