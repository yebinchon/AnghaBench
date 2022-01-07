
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int RPC ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;


 int * AdminConnectEx2 (int *,int *,char*,void*,int *,char*,int *) ;

RPC *AdminConnectEx(CEDAR *cedar, CLIENT_OPTION *o, char *hubname, void *hashed_password, UINT *err, char *client_name)
{
 return AdminConnectEx2(cedar, o, hubname, hashed_password, err, client_name, ((void*)0));
}
