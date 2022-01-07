
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; struct TYPE_3__* screen; scalar_t__ socket; } ;
typedef TYPE_1__ gfx_ctx_osmesa_data_t ;


 int OSMesaDestroyContext (int ) ;
 int close (scalar_t__) ;
 int free (TYPE_1__*) ;
 int unlink (char*) ;

__attribute__((used)) static void osmesa_ctx_destroy(void *data)
{
   gfx_ctx_osmesa_data_t *osmesa = (gfx_ctx_osmesa_data_t*)data;

   if (!osmesa)
      return;

   if (osmesa->socket)
      close(osmesa->socket);

   unlink("/tmp/retroarch-osmesa.fifo");

   free(osmesa->screen);
   OSMesaDestroyContext(osmesa->ctx);

   free(osmesa);
}
