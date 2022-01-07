
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int system (char const*) ;

__attribute__((used)) static int do_system(const char *cmd)
{
 int ret;

 ret = system(cmd);
 if (ret >= 0)
  ret = 0;

 return ret;
}
