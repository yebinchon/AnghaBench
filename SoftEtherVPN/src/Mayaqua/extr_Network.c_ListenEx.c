
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ListenEx2 (int ,int,int,int *) ;

SOCK *ListenEx(UINT port, bool local_only)
{
 return ListenEx2(port, local_only, 0, ((void*)0));
}
