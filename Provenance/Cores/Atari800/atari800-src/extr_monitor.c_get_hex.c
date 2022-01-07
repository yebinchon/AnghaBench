
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;


 int FALSE ;
 char* get_token () ;
 int parse_hex (char const*,int *) ;

__attribute__((used)) static int get_hex(UWORD *hexval)
{
 const char *t;
 t = get_token();
 if (t != ((void*)0))
  return parse_hex(t, hexval);
 return FALSE;
}
