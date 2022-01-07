
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;


 int * ListenEx (int ,int) ;

SOCK *Listen(UINT port)
{
 return ListenEx(port, 0);
}
