
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ctx_data; TYPE_1__* ctx_driver; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_3__ {int (* show_mouse ) (int ,int) ;} ;


 int stub1 (int ,int) ;

__attribute__((used)) static void vulkan_show_mouse(void *data, bool state)
{
   vk_t *vk = (vk_t*)data;

   if (vk && vk->ctx_driver->show_mouse)
      vk->ctx_driver->show_mouse(vk->ctx_data, state);
}
