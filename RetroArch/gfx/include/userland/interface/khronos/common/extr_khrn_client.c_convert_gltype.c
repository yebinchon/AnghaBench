
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int EGL_CONTEXT_TYPE_T ;


 int EGL_SERVER_GL11 ;
 int EGL_SERVER_GL20 ;


 int UNREACHABLE () ;

__attribute__((used)) static uint32_t convert_gltype(EGL_CONTEXT_TYPE_T type)
{
   switch (type) {
   case 129: return EGL_SERVER_GL11;
   case 128: return EGL_SERVER_GL20;
   default: UNREACHABLE(); return 0;
   }
}
