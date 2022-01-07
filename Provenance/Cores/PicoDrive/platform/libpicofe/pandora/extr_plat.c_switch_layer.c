
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int do_system (char*) ;
 char* pnd_script_base ;
 int read_int_from_file (char*) ;
 int snprintf (char*,int,char*,char*,int) ;

__attribute__((used)) static int switch_layer(int which, int enable)
{
 static int was_ovl_enabled = -1;
 int tv_enabled = 0;
 char buf[128];
 int ret;

 if (which != 1)
  return -1;
 if (enable == was_ovl_enabled)
  return 0;

 was_ovl_enabled = -1;

 tv_enabled = read_int_from_file(
     "/sys/devices/platform/omapdss/display1/enabled");
 if (tv_enabled < 0)
  return -1;

 if (!tv_enabled) {

  return 0;
 }

 snprintf(buf, sizeof(buf), "%s/op_tvout.sh -l %d",
   pnd_script_base, enable);
 ret = do_system(buf);
 if (ret == 0)
  was_ovl_enabled = enable;

 return ret;
}
