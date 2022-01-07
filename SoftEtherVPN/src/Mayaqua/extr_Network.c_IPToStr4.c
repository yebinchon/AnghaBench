
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int* addr; } ;
typedef TYPE_1__ IP ;


 int snprintf (char*,scalar_t__,char*,int,int,int,int) ;

void IPToStr4(char *str, UINT size, IP *ip)
{

 if (str == ((void*)0) || ip == ((void*)0))
 {
  return;
 }


 snprintf(str, size != 0 ? size : 64, "%u.%u.%u.%u", ip->addr[0], ip->addr[1], ip->addr[2], ip->addr[3]);
}
