
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* priv; } ;
typedef TYPE_2__ VC_CONTAINER_T ;
typedef int VC_CONTAINER_STATUS_T ;
struct TYPE_10__ {char* line; } ;
typedef TYPE_3__ VC_CONTAINER_MODULE_T ;
struct TYPE_8__ {TYPE_3__* module; } ;


 int LOG_ERROR (TYPE_2__*,char*) ;
 unsigned int PEEK_BYTES (TYPE_2__*,char*,int) ;
 int SKIP_BYTES (TYPE_2__*,unsigned int) ;
 int VC_CONTAINER_ERROR_CORRUPTED ;
 int VC_CONTAINER_ERROR_EOS ;
 int VC_CONTAINER_SUCCESS ;

__attribute__((used)) static VC_CONTAINER_STATUS_T simple_read_line( VC_CONTAINER_T *ctx )
{
   VC_CONTAINER_MODULE_T *module = ctx->priv->module;
   unsigned int i, bytes = PEEK_BYTES(ctx, module->line, sizeof(module->line)-1);

   if (!bytes)
      return VC_CONTAINER_ERROR_EOS;


   for (i = 0; i < bytes; i++)
      if (module->line[i] == '\n')
         break;


   if (i == sizeof(module->line)-1)
   {
      LOG_ERROR(ctx, "line too big");
      return VC_CONTAINER_ERROR_CORRUPTED;
   }

   if (i < bytes)
   {
      module->line[i++] = 0;
      if (i < bytes && module->line[i] == '\r')
         i++;
   }
   module->line[i] = 0;

   SKIP_BYTES(ctx, i);
   return VC_CONTAINER_SUCCESS;
}
