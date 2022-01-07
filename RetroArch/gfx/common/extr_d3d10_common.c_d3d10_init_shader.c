
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int layout; int gs; int ps; int vs; } ;
typedef TYPE_1__ d3d10_shader_t ;
typedef int UINT ;
typedef int LPCWSTR ;
typedef scalar_t__ LPCSTR ;
typedef int * D3DBlob ;
typedef int D3D10_INPUT_ELEMENT_DESC ;
typedef int D3D10Device ;


 int D3D10CreateGeometryShader (int ,int ,int ,int *) ;
 int D3D10CreateInputLayout (int ,int *,int ,int ,int ,int *) ;
 int D3D10CreatePixelShader (int ,int ,int ,int *) ;
 int D3D10CreateVertexShader (int ,int ,int ,int *) ;
 int D3DGetBufferPointer (int *) ;
 int D3DGetBufferSize (int *) ;
 int Release (int *) ;
 int d3d_compile (char const*,size_t,scalar_t__,scalar_t__,char*,int **) ;
 int d3d_compile_from_file (int ,scalar_t__,char*,int **) ;

bool d3d10_init_shader(
      D3D10Device device,
      const char* src,
      size_t size,
      const void* src_name,
      LPCSTR vs_entry,
      LPCSTR ps_entry,
      LPCSTR gs_entry,
      const D3D10_INPUT_ELEMENT_DESC* input_element_descs,
      UINT num_elements,
      d3d10_shader_t* out)
{
   D3DBlob vs_code = ((void*)0);
   D3DBlob ps_code = ((void*)0);
   D3DBlob gs_code = ((void*)0);

   bool success = 1;

   if (!src)
   {
      if (vs_entry && !d3d_compile_from_file((LPCWSTR)src_name, vs_entry, "vs_4_0", &vs_code))
         success = 0;
      if (ps_entry && !d3d_compile_from_file((LPCWSTR)src_name, ps_entry, "ps_4_0", &ps_code))
         success = 0;
      if (gs_entry && !d3d_compile_from_file((LPCWSTR)src_name, gs_entry, "gs_4_0", &gs_code))
         success = 0;
   }
   else
   {
      if (vs_entry && !d3d_compile(src, size, (LPCSTR)src_name, vs_entry, "vs_4_0", &vs_code))
         success = 0;
      if (ps_entry && !d3d_compile(src, size, (LPCSTR)src_name, ps_entry, "ps_4_0", &ps_code))
         success = 0;
      if (gs_entry && !d3d_compile(src, size, (LPCSTR)src_name, gs_entry, "gs_4_0", &gs_code))
         success = 0;
   }

   if (vs_code)
      D3D10CreateVertexShader(
            device, D3DGetBufferPointer(vs_code), D3DGetBufferSize(vs_code), &out->vs);

   if (ps_code)
      D3D10CreatePixelShader(
            device, D3DGetBufferPointer(ps_code), D3DGetBufferSize(ps_code), &out->ps);

   if (gs_code)
      D3D10CreateGeometryShader(
            device, D3DGetBufferPointer(gs_code), D3DGetBufferSize(gs_code), &out->gs);

   if (vs_code && input_element_descs)
      D3D10CreateInputLayout(
            device,
            (D3D10_INPUT_ELEMENT_DESC*)input_element_descs, num_elements, D3DGetBufferPointer(vs_code),
            D3DGetBufferSize(vs_code), &out->layout);

   Release(vs_code);
   Release(ps_code);
   Release(gs_code);

   return success;
}
