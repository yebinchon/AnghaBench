
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LexState ;


 int check (int *,int) ;
 int luaX_next (int *) ;

__attribute__((used)) static void checknext (LexState *ls, int c) {
  check(ls, c);
  luaX_next(ls);
}
