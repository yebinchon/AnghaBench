
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ConnectEx3 (char*,int ,int ,int*,int *,int *,int,int) ;

SOCK *ConnectEx2(char *hostname, UINT port, UINT timeout, bool *cancel_flag)
{
 return ConnectEx3(hostname, port, timeout, cancel_flag, ((void*)0), ((void*)0), 0, 1);
}
