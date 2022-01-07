
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* get_token (char*,int,char const*) ;

__attribute__((used)) static const char *get_arg(char *buf, int blen, const char *str)
{
  if (*str == ';')
    return ((void*)0);
  return get_token(buf, blen, str);
}
