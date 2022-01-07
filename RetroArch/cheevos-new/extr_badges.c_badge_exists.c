
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int path_is_valid (char const*) ;

bool badge_exists(const char* filepath)
{
  return path_is_valid(filepath);
}
