
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct unsigned_vector_list {int dummy; } ;
struct LinkInfo {TYPE_2__* pass; } ;
struct shader_pass {int pool; struct unsigned_vector_list* attrib_map; scalar_t__ last_height; scalar_t__ last_width; struct LinkInfo info; } ;
struct TYPE_9__ {int dev; } ;
struct TYPE_8__ {TYPE_4__ chain; } ;
typedef TYPE_3__ hlsl_renderchain_t ;
struct TYPE_6__ {int path; } ;
struct TYPE_7__ {TYPE_1__ source; } ;


 int D3DPOOL_DEFAULT ;
 int d3d9_hlsl_load_program_from_file (int ,struct shader_pass*,int ) ;
 int d3d9_renderchain_add_pass (TYPE_4__*,struct shader_pass*,struct LinkInfo const*) ;
 int hlsl_d3d9_renderchain_init_shader_fvf (TYPE_4__*,struct shader_pass*) ;
 scalar_t__ unsigned_vector_list_new () ;

__attribute__((used)) static bool hlsl_d3d9_renderchain_add_pass(
      void *data, const struct LinkInfo *info)
{
   struct shader_pass pass;
   hlsl_renderchain_t *chain = (hlsl_renderchain_t*)data;

   pass.info = *info;
   pass.last_width = 0;
   pass.last_height = 0;
   pass.attrib_map = (struct unsigned_vector_list*)
      unsigned_vector_list_new();
   pass.pool = D3DPOOL_DEFAULT;

   d3d9_hlsl_load_program_from_file(chain->chain.dev, &pass, info->pass->source.path);

   if (!hlsl_d3d9_renderchain_init_shader_fvf(&chain->chain, &pass))
      return 0;

   return d3d9_renderchain_add_pass(&chain->chain, &pass,
         info);
}
