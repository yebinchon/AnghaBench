
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WPC_CONNECT ;
typedef int UINT ;
typedef int SOCK ;


 int * WpcSockConnectEx (int *,int *,int ,int *) ;

SOCK *WpcSockConnect(WPC_CONNECT *param, UINT *error_code, UINT timeout)
{
 return WpcSockConnectEx(param, error_code, timeout, ((void*)0));
}
