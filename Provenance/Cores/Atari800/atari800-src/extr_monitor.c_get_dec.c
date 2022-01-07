
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int Util_sscandec (char const*) ;
 char* get_token () ;

__attribute__((used)) static int get_dec(int *decval)
{
 const char *t;
 t = get_token();
 if (t != ((void*)0)) {
  int x = Util_sscandec(t);
  if (x < 0)
   return FALSE;
  *decval = x;
  return TRUE;
 }
 return FALSE;
}
