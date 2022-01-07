
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int aux_lines (int *,int,int ) ;
 int tofile (int *) ;

__attribute__((used)) static int f_lines (lua_State *L) {
  tofile(L);
  aux_lines(L, 1, 0);
  return 1;
}
