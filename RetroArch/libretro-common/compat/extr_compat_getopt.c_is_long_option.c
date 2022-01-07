
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_long_option(const char *str)
{
   return str[0] == '-' && str[1] == '-';
}
