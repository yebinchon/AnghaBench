
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dirent {int d_name; } ;
struct _finddata_t {int name; } ;
typedef int lua_State ;
struct TYPE_2__ {int closed; long hFile; int dir; int pattern; } ;
typedef TYPE_1__ dir_data ;


 int _findclose (long) ;
 long _findfirst (int ,struct _finddata_t*) ;
 long _findnext (long,struct _finddata_t*) ;
 int closedir (int ) ;
 int errno ;
 int luaL_argcheck (int *,int,int,char*) ;
 int lua_pushnil (int *) ;
 int lua_pushstring (int *,int ) ;
 scalar_t__ lua_touserdata (int *,int ) ;
 int lua_upvalueindex (int) ;
 struct dirent* readdir (int ) ;
 int strerror (int ) ;

__attribute__((used)) static int dir_iter (lua_State *L) {



 struct dirent *entry;

 dir_data *d = (dir_data *)lua_touserdata (L, lua_upvalueindex (1));
 luaL_argcheck (L, !d->closed, 1, "closed directory");
 if ((entry = readdir (d->dir)) != ((void*)0)) {
  lua_pushstring (L, entry->d_name);
  return 1;
 } else {

  closedir (d->dir);
  d->closed = 1;
  return 0;
 }

}
