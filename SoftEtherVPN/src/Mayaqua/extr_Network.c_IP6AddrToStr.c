
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int Value; } ;
typedef TYPE_1__ IPV6_ADDR ;


 int IPToStr6Array (char*,int ,int ) ;

void IP6AddrToStr(char *str, UINT size, IPV6_ADDR *addr)
{

 if (str == ((void*)0) || addr == ((void*)0))
 {
  return;
 }

 IPToStr6Array(str, size, addr->Value);
}
