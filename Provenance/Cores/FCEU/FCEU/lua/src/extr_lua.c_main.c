
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Smain {int argc; char** argv; int status; } ;
typedef int lua_State ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int l_message (char*,char*) ;
 int lua_close (int *) ;
 int lua_cpcall (int *,int *,struct Smain*) ;
 int * lua_open () ;
 int pmain ;
 int report (int *,int) ;

int main (int argc, char **argv) {
  int status;
  struct Smain s;
  lua_State *L = lua_open();
  if (L == ((void*)0)) {
    l_message(argv[0], "cannot create state: not enough memory");
    return EXIT_FAILURE;
  }
  s.argc = argc;
  s.argv = argv;
  status = lua_cpcall(L, &pmain, &s);
  report(L, status);
  lua_close(L);
  return (status || s.status) ? EXIT_FAILURE : EXIT_SUCCESS;
}
