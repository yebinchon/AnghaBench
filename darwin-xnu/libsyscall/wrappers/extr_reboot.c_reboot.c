
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __reboot (int,int *) ;

int
reboot(int howto)
{
 int res = __reboot(howto, ((void*)0));
 return res;
}
