
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mutex; int L; } ;
typedef TYPE_1__ lua_scope ;


 int G_STRLOC ;
 int g_critical (char*,int ,scalar_t__) ;
 int g_free (TYPE_1__*) ;
 int g_mutex_free (int ) ;
 int lua_close (int ) ;
 scalar_t__ lua_gettop (int ) ;

void lua_scope_free(lua_scope *sc) {
 if (!sc) return;
 g_mutex_free(sc->mutex);

 g_free(sc);
}
