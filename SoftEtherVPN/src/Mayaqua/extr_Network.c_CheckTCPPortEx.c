
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ConnectEx (char*,int,int) ;
 int Disconnect (int *) ;
 int ReleaseSock (int *) ;
 int TIMEOUT_TCP_PORT_CHECK ;

bool CheckTCPPortEx(char *hostname, UINT port, UINT timeout)
{
 SOCK *s;

 if (hostname == ((void*)0) || port == 0 || port >= 65536)
 {
  return 0;
 }

 if (timeout == 0)
 {
  timeout = TIMEOUT_TCP_PORT_CHECK;
 }

 s = ConnectEx(hostname, port, timeout);
 if (s == ((void*)0))
 {
  return 0;
 }
 else
 {
  Disconnect(s);
  ReleaseSock(s);
  return 1;
 }
}
