
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int lua_State ;
struct TYPE_2__ {int closed; scalar_t__ dir; scalar_t__ hFile; } ;
typedef TYPE_1__ dir_data ;


 int _findclose (scalar_t__) ;
 int closedir (scalar_t__) ;
 scalar_t__ lua_touserdata (int *,int) ;

__attribute__((used)) static int dir_close (lua_State *L) {
 dir_data *d = (dir_data *)lua_touserdata (L, 1);






 if (!d->closed && d->dir) {
  closedir (d->dir);
  d->closed = 1;
 }

 return 0;
}
