
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* context; } ;
typedef TYPE_2__ vk_t ;
struct TYPE_3__ {int queue_lock; } ;


 int slock_lock (int ) ;

__attribute__((used)) static void vulkan_lock_queue(void *handle)
{
   vk_t *vk = (vk_t*)handle;



}
