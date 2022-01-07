
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * NewUDPEx (int ,int) ;

SOCK *NewUDP(UINT port)
{
 return NewUDPEx(port, 0);
}
