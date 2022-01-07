
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; int status; int condition; } ;
typedef int EGLint ;
typedef TYPE_1__ EGL_SYNC_T ;
typedef int EGLBoolean ;


 int EGL_FALSE ;



 int EGL_TRUE ;

__attribute__((used)) static EGLBoolean egl_sync_get_attrib(EGL_SYNC_T *sync, EGLint attrib, EGLint *value)
{
   switch (attrib) {
   case 128:
      *value = sync->type;
      return EGL_TRUE;
   case 129:
      *value = sync->status;
      return EGL_TRUE;
   case 130:
      *value = sync->condition;
      return EGL_TRUE;
   default:
      return EGL_FALSE;
   }
}
