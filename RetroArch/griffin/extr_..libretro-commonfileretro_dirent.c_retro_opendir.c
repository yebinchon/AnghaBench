
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RDIR {int dummy; } ;


 struct RDIR* retro_opendir_include_hidden (char const*,int) ;

struct RDIR *retro_opendir(const char *name)
{
   return retro_opendir_include_hidden(name, 0);
}
