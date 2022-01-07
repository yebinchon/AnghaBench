
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ L_top; int mutex; int L; } ;
typedef TYPE_1__ lua_scope ;


 int g_critical (char*,char const*,scalar_t__,scalar_t__) ;
 int g_mutex_unlock (int ) ;
 scalar_t__ lua_gettop (int ) ;

void lua_scope_release(lua_scope *sc, const char* pos) {






 g_mutex_unlock(sc->mutex);


 return;
}
