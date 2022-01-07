
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int fence_count; int * fences; } ;
typedef TYPE_1__ gl2_renderchain_data_t ;


 int GL_SYNC_FLUSH_COMMANDS_BIT ;
 int glClientWaitSync (int ,int ,int) ;
 int glDeleteSync (int ) ;

__attribute__((used)) static void gl2_renderchain_fence_free(void *data,
      gl2_renderchain_data_t *chain)
{
}
