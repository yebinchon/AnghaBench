
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ListenEx62 (int ,int,int) ;

SOCK *ListenEx6(UINT port, bool local_only)
{
 return ListenEx62(port, local_only, 0);
}
