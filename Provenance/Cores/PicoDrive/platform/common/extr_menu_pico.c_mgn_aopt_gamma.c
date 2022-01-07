
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gamma; } ;


 TYPE_1__ currentConfig ;
 int sprintf (char const*,char*,int,int) ;
 char const* static_buff ;

__attribute__((used)) static const char *mgn_aopt_gamma(int id, int *offs)
{
 sprintf(static_buff, "%i.%02i", currentConfig.gamma / 100, currentConfig.gamma % 100);
 return static_buff;
}
