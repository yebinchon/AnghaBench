
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void cdfs_skip_spaces(const char** ptr)
{
   while (**ptr && (**ptr == ' ' || **ptr == '\t'))
      ++(*ptr);
}
