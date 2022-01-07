
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Csimple ;
 int capture_aux (int *,int ,int ) ;

__attribute__((used)) static int capture_l (lua_State *L) { return capture_aux(L, Csimple, 0); }
