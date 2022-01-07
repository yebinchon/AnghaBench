
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int mutex; int unfocused; } ;


 scalar_t__ g_android ;
 int slock_lock (int ) ;
 int slock_unlock (int ) ;

__attribute__((used)) static bool android_gfx_ctx_has_focus(void *data)
{
   bool focused = 0;
   struct android_app *android_app = (struct android_app*)g_android;
   if (!android_app)
      return 1;

   slock_lock(android_app->mutex);
   focused = !android_app->unfocused;
   slock_unlock(android_app->mutex);

   return focused;
}
