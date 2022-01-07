
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int do_system (char*) ;
 char* pnd_script_base ;
 int snprintf (char*,int,char*,char*,int,float) ;

__attribute__((used)) static int gamma_set(int val, int black_level)
{
 char buf[128];

 snprintf(buf, sizeof(buf), "%s/op_gamma.sh -b %d %.2f",
   pnd_script_base, black_level, (float)val / 100.0f);
 return do_system(buf);
}
