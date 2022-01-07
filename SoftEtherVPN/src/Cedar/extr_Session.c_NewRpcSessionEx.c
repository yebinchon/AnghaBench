
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SESSION ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;


 int * NewRpcSessionEx2 (int *,int *,int *,char*,int *) ;

SESSION *NewRpcSessionEx(CEDAR *cedar, CLIENT_OPTION *option, UINT *err, char *client_str)
{
 return NewRpcSessionEx2(cedar, option, err, client_str, ((void*)0));
}
