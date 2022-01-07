
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Util_sscanbool (char const*) ;
 char* get_token () ;
 int printf (char*) ;

__attribute__((used)) static int get_bool(void)
{
 const char *t;
 t = get_token();
 if (t != ((void*)0)) {
  int result = Util_sscanbool(t);
  if (result >= 0)
   return result;
 }
 printf("Invalid argument (should be 0 or 1)!\n");
 return -1;
}
