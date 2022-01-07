
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int CLIENT_NOTIFY_PORT ;
 int * ConnectEx (char*,int ,int ) ;

SOCK *CncConnectEx(UINT timeout)
{
 SOCK *s = ConnectEx("localhost", CLIENT_NOTIFY_PORT, timeout);

 return s;
}
