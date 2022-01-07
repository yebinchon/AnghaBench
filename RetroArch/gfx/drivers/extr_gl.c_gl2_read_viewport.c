
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int gl_t ;


 int gl2_renderchain_read_viewport (int *,int *,int) ;

__attribute__((used)) static bool gl2_read_viewport(void *data, uint8_t *buffer, bool is_idle)
{
   gl_t *gl = (gl_t*)data;

   if (!gl)
      return 0;

   return gl2_renderchain_read_viewport(gl, buffer, is_idle);
}
