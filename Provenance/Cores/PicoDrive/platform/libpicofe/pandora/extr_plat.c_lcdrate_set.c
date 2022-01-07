
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int do_system (char*) ;
 char* pnd_script_base ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int lcdrate_set(int is_pal)
{
 static int old_pal = -1;
 char buf[128];

 if (is_pal == old_pal)
  return 0;
 old_pal = is_pal;

 snprintf(buf, sizeof(buf), "%s/op_lcdrate.sh %d",
   pnd_script_base, is_pal ? 50 : 60);
 return do_system(buf);
}
