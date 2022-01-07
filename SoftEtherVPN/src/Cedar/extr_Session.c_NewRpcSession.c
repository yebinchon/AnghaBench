
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SESSION ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;


 int * NewRpcSessionEx (int *,int *,int *,int *) ;

SESSION *NewRpcSession(CEDAR *cedar, CLIENT_OPTION *option)
{
 return NewRpcSessionEx(cedar, option, ((void*)0), ((void*)0));
}
