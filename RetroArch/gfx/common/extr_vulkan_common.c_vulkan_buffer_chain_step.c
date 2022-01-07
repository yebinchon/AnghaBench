
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vk_buffer_chain {scalar_t__ offset; TYPE_1__* current; } ;
struct TYPE_2__ {struct TYPE_2__* next; } ;



__attribute__((used)) static void vulkan_buffer_chain_step(struct vk_buffer_chain *chain)
{
   chain->current = chain->current->next;
   chain->offset = 0;
}
