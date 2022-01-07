
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __reboot (int,char const*) ;

int
reboot_np(int howto, const char *msg)
{
 int res = __reboot(howto, msg);
 return res;
}
