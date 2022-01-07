
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* mode_t ;
typedef int lua_State ;


 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int _mkdir (char const*) ;
 int errno ;
 char* luaL_checkstring (int *,int) ;
 int lua_pushboolean (int *,int) ;
 int lua_pushfstring (int *,char*,int ) ;
 int lua_pushnil (int *) ;
 int mkdir (char const*,int) ;
 int strerror (int ) ;
 void* umask (void*) ;

__attribute__((used)) static int make_dir (lua_State *L) {
 const char *path = luaL_checkstring (L, 1);
 int fail;




 mode_t oldmask = umask( (mode_t)0 );
 fail = mkdir (path, S_IRUSR | S_IWUSR | S_IXUSR | S_IRGRP |
                      S_IWGRP | S_IXGRP | S_IROTH | S_IXOTH );

 if (fail) {
  lua_pushnil (L);
        lua_pushfstring (L, "%s", strerror(errno));
  return 2;
 }
 umask (oldmask);
 lua_pushboolean (L, 1);
 return 1;
}
