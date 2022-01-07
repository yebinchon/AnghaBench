
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct LinkInfo {char* tex_w; char* tex_h; TYPE_2__* pass; } ;
struct TYPE_3__ {int type_x; char* scale_x; char* abs_x; int type_y; char* scale_y; char* abs_y; } ;
struct TYPE_4__ {scalar_t__ filter; TYPE_1__ fbo; } ;


 scalar_t__ RARCH_FILTER_LINEAR ;
 int RARCH_LOG (char*,...) ;




__attribute__((used)) static void d3d9_log_info(const struct LinkInfo *info)
{
   RARCH_LOG("[D3D9]: Render pass info:\n");
   RARCH_LOG("\tTexture width: %u\n", info->tex_w);
   RARCH_LOG("\tTexture height: %u\n", info->tex_h);

   RARCH_LOG("\tScale type (X): ");

   switch (info->pass->fbo.type_x)
   {
      case 129:
         RARCH_LOG("Relative @ %fx\n", info->pass->fbo.scale_x);
         break;

      case 128:
         RARCH_LOG("Viewport @ %fx\n", info->pass->fbo.scale_x);
         break;

      case 130:
         RARCH_LOG("Absolute @ %u px\n", info->pass->fbo.abs_x);
         break;
   }

   RARCH_LOG("\tScale type (Y): ");

   switch (info->pass->fbo.type_y)
   {
      case 129:
         RARCH_LOG("Relative @ %fx\n", info->pass->fbo.scale_y);
         break;

      case 128:
         RARCH_LOG("Viewport @ %fx\n", info->pass->fbo.scale_y);
         break;

      case 130:
         RARCH_LOG("Absolute @ %u px\n", info->pass->fbo.abs_y);
         break;
   }

   RARCH_LOG("\tBilinear filter: %s\n",
         info->pass->filter == RARCH_FILTER_LINEAR ? "true" : "false");
}
