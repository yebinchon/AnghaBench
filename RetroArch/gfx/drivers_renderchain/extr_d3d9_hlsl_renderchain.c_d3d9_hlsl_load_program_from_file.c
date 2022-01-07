
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shader_pass {int vprg; int fprg; int vtable; int ftable; } ;
typedef int LPDIRECT3DDEVICE9 ;
typedef int ID3DXBuffer ;
typedef int DWORD ;


 int RARCH_ERR (char*,...) ;
 int d3d9_create_pixel_shader (int ,int const*,void**) ;
 int d3d9_create_vertex_shader (int ,int const*,void**) ;
 int d3d9x_buffer_release (void*) ;
 int d3d9x_compile_shader_from_file (char const*,int *,int *,char*,char*,int ,int **,int **,int *) ;
 scalar_t__ d3d9x_get_buffer_ptr (int *) ;
 scalar_t__ string_is_empty (char const*) ;

__attribute__((used)) static bool d3d9_hlsl_load_program_from_file(
      LPDIRECT3DDEVICE9 dev,
      struct shader_pass *pass,
      const char *prog)
{
   ID3DXBuffer *listing_f = ((void*)0);
   ID3DXBuffer *listing_v = ((void*)0);
   ID3DXBuffer *code_f = ((void*)0);
   ID3DXBuffer *code_v = ((void*)0);

   if (string_is_empty(prog))
      return 0;

   if (!d3d9x_compile_shader_from_file(prog, ((void*)0), ((void*)0),
            "main_fragment", "ps_3_0", 0, &code_f, &listing_f, &pass->ftable))
   {
      RARCH_ERR("Could not compile fragment shader program (%s)..\n", prog);
      goto error;
   }
   if (!d3d9x_compile_shader_from_file(prog, ((void*)0), ((void*)0),
            "main_vertex", "vs_3_0", 0, &code_v, &listing_v, &pass->vtable))
   {
      RARCH_ERR("Could not compile vertex shader program (%s)..\n", prog);
      goto error;
   }

   d3d9_create_pixel_shader(dev, (const DWORD*)d3d9x_get_buffer_ptr(code_f), (void**)&pass->fprg);
   d3d9_create_vertex_shader(dev, (const DWORD*)d3d9x_get_buffer_ptr(code_v), (void**)&pass->vprg);
   d3d9x_buffer_release((void*)code_f);
   d3d9x_buffer_release((void*)code_v);

   return 1;

error:
   RARCH_ERR("Cg/HLSL error:\n");
   if (listing_f)
      RARCH_ERR("Fragment:\n%s\n", (char*)d3d9x_get_buffer_ptr(listing_f));
   if (listing_v)
      RARCH_ERR("Vertex:\n%s\n", (char*)d3d9x_get_buffer_ptr(listing_v));
   d3d9x_buffer_release((void*)listing_f);
   d3d9x_buffer_release((void*)listing_v);

   return 0;
}
