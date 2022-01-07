
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lua_State ;


 int lua_getglobal (int *,char*) ;
 scalar_t__ lua_pcall (int *,int,int ,int ) ;
 int lua_pushstring (int *,char const*) ;
 char* lua_tostring (int *,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int call_init(lua_State * L, int argc, const char ** argv)
{
   int rv = -1;
   int i;

   lua_getglobal(L, "init");
   for (i = 0; i < argc; i++)
      lua_pushstring(L, argv[i]);

   if (lua_pcall(L, argc, 0, 0) != 0)
   {
      printf(
            "error running function `init': %s\n",
            lua_tostring(L, -1)
            );
   }

   return rv;
}
