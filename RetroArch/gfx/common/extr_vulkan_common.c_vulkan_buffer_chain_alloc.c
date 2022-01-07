
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vulkan_context {int dummy; } ;
struct vk_buffer_range {int dummy; } ;
struct vk_buffer_chain {size_t block_size; TYPE_1__* current; int usage; scalar_t__ offset; TYPE_1__* head; } ;
struct TYPE_2__ {void* next; } ;


 int retro_assert (scalar_t__) ;
 void* vulkan_buffer_chain_alloc_node (struct vulkan_context const*,size_t,int ) ;
 int vulkan_buffer_chain_step (struct vk_buffer_chain*) ;
 scalar_t__ vulkan_buffer_chain_suballoc (struct vk_buffer_chain*,size_t,struct vk_buffer_range*) ;

bool vulkan_buffer_chain_alloc(const struct vulkan_context *context,
      struct vk_buffer_chain *chain,
      size_t size, struct vk_buffer_range *range)
{
   if (!chain->head)
   {
      chain->head = vulkan_buffer_chain_alloc_node(context,
            chain->block_size, chain->usage);
      if (!chain->head)
         return 0;

      chain->current = chain->head;
      chain->offset = 0;
   }

   if (vulkan_buffer_chain_suballoc(chain, size, range))
      return 1;



   while (chain->current->next)
   {
      vulkan_buffer_chain_step(chain);
      if (vulkan_buffer_chain_suballoc(chain, size, range))
         return 1;
   }




   if (size < chain->block_size)
      size = chain->block_size;

   chain->current->next = vulkan_buffer_chain_alloc_node(
         context, size, chain->usage);
   if (!chain->current->next)
      return 0;

   vulkan_buffer_chain_step(chain);

   retro_assert(vulkan_buffer_chain_suballoc(chain, size, range));
   return 1;
}
