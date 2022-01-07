
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char lua_getlocaledecpoint () ;
 int * memchr (char*,char,int) ;

__attribute__((used)) static void checkdp (char *buff, int nb) {
  if (memchr(buff, '.', nb) == ((void*)0)) {
    char point = lua_getlocaledecpoint();
    char *ppoint = (char *)memchr(buff, point, nb);
    if (ppoint) *ppoint = '.';
  }
}
