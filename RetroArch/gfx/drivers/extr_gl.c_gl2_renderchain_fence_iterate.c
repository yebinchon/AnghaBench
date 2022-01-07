
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fence_count; int * fences; } ;
typedef TYPE_1__ gl2_renderchain_data_t ;


 int GL_SYNC_FLUSH_COMMANDS_BIT ;
 int GL_SYNC_GPU_COMMANDS_COMPLETE ;
 int glClientWaitSync (int ,int ,int) ;
 int glDeleteSync (int ) ;
 int glFenceSync (int ,int ) ;
 int memmove (int *,int *,int) ;

__attribute__((used)) static void gl2_renderchain_fence_iterate(
      void *data,
      gl2_renderchain_data_t *chain,
      unsigned hard_sync_frames)
{
}
