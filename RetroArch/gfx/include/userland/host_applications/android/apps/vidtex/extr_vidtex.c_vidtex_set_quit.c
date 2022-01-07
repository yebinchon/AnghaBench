
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int quit; int mutex; } ;
typedef TYPE_1__ VIDTEX_T ;


 int vcos_mutex_lock (int *) ;
 int vcos_mutex_unlock (int *) ;

__attribute__((used)) static bool vidtex_set_quit(VIDTEX_T *vt, bool quit)
{
   vcos_mutex_lock(&vt->mutex);
   bool old_quit = vt->quit;
   vt->quit = quit;
   vcos_mutex_unlock(&vt->mutex);

   return old_quit;
}
