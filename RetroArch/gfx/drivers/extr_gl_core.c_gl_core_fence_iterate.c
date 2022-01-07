
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fence_count; int * fences; } ;
typedef TYPE_1__ gl_core_t ;
typedef int GLsync ;


 int GL_COLOR_BUFFER_BIT ;
 unsigned int GL_CORE_NUM_FENCES ;
 int GL_SCISSOR_TEST ;
 int GL_SYNC_FLUSH_COMMANDS_BIT ;
 int GL_SYNC_GPU_COMMANDS_COMPLETE ;
 int GL_TRUE ;
 int glClear (int ) ;
 int glClientWaitSync (int ,int ,int) ;
 int glColorMask (int ,int ,int ,int ) ;
 int glDeleteSync (int ) ;
 int glDisable (int ) ;
 int glEnable (int ) ;
 int glFenceSync (int ,int ) ;
 int glScissor (int ,int ,int,int) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void gl_core_fence_iterate(gl_core_t *gl, unsigned hard_sync_frames)
{
   if (gl->fence_count < GL_CORE_NUM_FENCES)
   {




      glEnable(GL_SCISSOR_TEST);
      glScissor(0, 0, 1, 1);
      glColorMask(GL_TRUE, GL_TRUE, GL_TRUE, GL_TRUE);
      glClear(GL_COLOR_BUFFER_BIT);
      glDisable(GL_SCISSOR_TEST);

      gl->fences[gl->fence_count++] = glFenceSync(GL_SYNC_GPU_COMMANDS_COMPLETE, 0);
   }

   while (gl->fence_count > hard_sync_frames)
   {
      glClientWaitSync(gl->fences[0], GL_SYNC_FLUSH_COMMANDS_BIT, 1000000000);
      glDeleteSync(gl->fences[0]);
      gl->fence_count--;
      memmove(gl->fences, gl->fences + 1, gl->fence_count * sizeof(GLsync));
   }
}
