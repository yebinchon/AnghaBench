
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ queue_lock; } ;
struct TYPE_7__ {TYPE_1__ context; } ;
struct TYPE_6__ {TYPE_3__ vk; } ;
typedef TYPE_2__ khr_display_ctx_data_t ;


 int free (TYPE_2__*) ;
 int slock_free (scalar_t__) ;
 int vulkan_context_destroy (TYPE_3__*,int) ;

__attribute__((used)) static void gfx_ctx_khr_display_destroy(void *data)
{
   khr_display_ctx_data_t *khr = (khr_display_ctx_data_t*)data;
   if (!khr)
      return;

   vulkan_context_destroy(&khr->vk, 1);




   free(khr);
}
