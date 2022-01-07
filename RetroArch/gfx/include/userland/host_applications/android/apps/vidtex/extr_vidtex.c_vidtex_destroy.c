
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int sem_decoded; int sem_drawn; int mutex; } ;
typedef TYPE_1__ VIDTEX_T ;


 int vcos_free (TYPE_1__*) ;
 int vcos_mutex_delete (int *) ;
 int vcos_semaphore_delete (int *) ;
 int vidtex_gl_term (TYPE_1__*) ;

__attribute__((used)) static void vidtex_destroy(VIDTEX_T *vt)
{
   vidtex_gl_term(vt);
   vcos_mutex_delete(&vt->mutex);
   vcos_semaphore_delete(&vt->sem_drawn);
   vcos_semaphore_delete(&vt->sem_decoded);
   vcos_free(vt);
}
