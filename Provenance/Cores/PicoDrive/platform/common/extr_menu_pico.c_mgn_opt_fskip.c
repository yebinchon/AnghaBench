
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ Frameskip; } ;


 TYPE_1__ currentConfig ;
 int sprintf (char const*,char*,scalar_t__) ;
 char const* static_buff ;

__attribute__((used)) static const char *mgn_opt_fskip(int id, int *offs)
{
 if (currentConfig.Frameskip < 0)
  return "Auto";
 sprintf(static_buff, "%d", currentConfig.Frameskip);
 return static_buff;
}
