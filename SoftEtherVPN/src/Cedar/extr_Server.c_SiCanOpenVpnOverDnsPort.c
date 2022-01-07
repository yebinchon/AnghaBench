
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;


 int Disconnect (int *) ;
 int * NewUDP (int) ;
 int ReleaseSock (int *) ;

bool SiCanOpenVpnOverDnsPort()
{

 SOCK *s = NewUDP(53);

 if (s == ((void*)0))
 {

  return 0;
 }

 Disconnect(s);
 ReleaseSock(s);

 return 1;
}
