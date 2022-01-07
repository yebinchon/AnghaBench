
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue_lock; } ;
struct TYPE_6__ {TYPE_1__ context; } ;
struct TYPE_7__ {TYPE_2__ vk; } ;
typedef TYPE_3__ gfx_ctx_x_data_t ;




 int free (void*) ;
 int gfx_ctx_x_destroy_resources (TYPE_3__*) ;
 int slock_free (int ) ;
 int x_api ;

__attribute__((used)) static void gfx_ctx_x_destroy(void *data)
{
   gfx_ctx_x_data_t *x = (gfx_ctx_x_data_t*)data;
   if (!x)
      return;

   gfx_ctx_x_destroy_resources(x);

   switch (x_api)
   {
      case 128:




         break;
      case 129:
      default:
         break;
   }

   free(data);
}
