
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;


 int CLIENT_NOTIFY_PORT ;
 int CnCheckAlreadyExists (int) ;
 int * ConnectEx (char*,int ,int) ;
 int Disconnect (int *) ;
 int ReleaseSock (int *) ;

bool CnIsCnServiceReady()
{
 SOCK *s;

 if (CnCheckAlreadyExists(0) == 0)
 {

  return 0;
 }


 s = ConnectEx("localhost", CLIENT_NOTIFY_PORT, 500);
 if (s == ((void*)0))
 {

  return 0;
 }

 Disconnect(s);
 ReleaseSock(s);


 return 1;
}
