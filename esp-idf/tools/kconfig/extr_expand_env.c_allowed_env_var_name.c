
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isblank (char) ;
 int iscntrl (char) ;

__attribute__((used)) static bool allowed_env_var_name(char c)
{
  return c != '\0' &&
    !isblank(c) &&
    !iscntrl(c) &&
    c != '/' &&
    c != '\\' &&
    c != '=' &&
    c != '$';
}
