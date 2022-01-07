
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int REMOTE_CLIENT ;


 int * CcConnectRpcEx (char*,char*,int*,int*,int *,int *,int,int ) ;

REMOTE_CLIENT *CcConnectRpc(char *server_name, char *password, bool *bad_pass, bool *no_remote, UINT wait_retry)
{
 return CcConnectRpcEx(server_name, password, bad_pass, no_remote, ((void*)0), ((void*)0), 0, wait_retry);
}
