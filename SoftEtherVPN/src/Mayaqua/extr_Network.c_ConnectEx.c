
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ConnectEx2 (char*,int ,int ,int *) ;

SOCK *ConnectEx(char *hostname, UINT port, UINT timeout)
{
 return ConnectEx2(hostname, port, timeout, ((void*)0));
}
