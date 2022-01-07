
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * NewUDPEx2 (int ,int,int *) ;

SOCK *NewUDPEx(UINT port, bool ipv6)
{
 return NewUDPEx2(port, ipv6, ((void*)0));
}
