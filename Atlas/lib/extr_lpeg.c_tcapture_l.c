
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int Ctable ;
 int capture_aux (int *,int ,int ) ;

__attribute__((used)) static int tcapture_l (lua_State *L) { return capture_aux(L, Ctable, 0); }
