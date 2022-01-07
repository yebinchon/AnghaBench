
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int action_right_cheat (unsigned int,char const*,int) ;

__attribute__((used)) static int action_select_cheat(const char *path, const char *label, unsigned type,
      size_t idx)
{
   return action_right_cheat(type, label, 1);
}
