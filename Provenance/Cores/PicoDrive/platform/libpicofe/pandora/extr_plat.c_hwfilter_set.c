
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int buf ;
struct TYPE_2__ {char** hwfilters; } ;


 int do_system (char*) ;
 TYPE_1__ plat_target ;
 char* pnd_script_base ;
 int snprintf (char*,int,char*,char*,char*) ;

__attribute__((used)) static int hwfilter_set(int which)
{
 static int old_filter = -1;
 char buf[128];
 int i;

 if (plat_target.hwfilters == ((void*)0))
  return -1;

 if (which == old_filter)
  return 0;

 for (i = 0; i <= which; i++)
  if (plat_target.hwfilters[i] == ((void*)0))
   return -1;

 old_filter = which;

 snprintf(buf, sizeof(buf), "%s/op_videofir.sh %s",
  pnd_script_base, plat_target.hwfilters[which]);
 return do_system(buf);
}
