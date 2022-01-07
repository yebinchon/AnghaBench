
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t scratch_vbo_index; int * scratch_vbos; } ;
typedef TYPE_1__ gl_core_t ;


 int GL_ARRAY_BUFFER ;
 size_t GL_CORE_NUM_VBOS ;
 int GL_STREAM_DRAW ;
 int glBindBuffer (int ,int ) ;
 int glBufferData (int ,size_t,void const*,int ) ;
 int glGenBuffers (int,int *) ;

void gl_core_bind_scratch_vbo(gl_core_t *gl, const void *data, size_t size)
{
   if (!gl->scratch_vbos[gl->scratch_vbo_index])
      glGenBuffers(1, &gl->scratch_vbos[gl->scratch_vbo_index]);
   glBindBuffer(GL_ARRAY_BUFFER, gl->scratch_vbos[gl->scratch_vbo_index]);
   glBufferData(GL_ARRAY_BUFFER, size, data, GL_STREAM_DRAW);
   gl->scratch_vbo_index++;
   if (gl->scratch_vbo_index >= GL_CORE_NUM_VBOS)
      gl->scratch_vbo_index = 0;
}
