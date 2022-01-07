
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;
typedef scalar_t__ D3D9XCreateFontIndirect_t ;
typedef scalar_t__ D3D9Create_t ;
typedef scalar_t__ D3D9CreateTextureFromFile_t ;
typedef scalar_t__ D3D9CompileShader_t ;
typedef scalar_t__ D3D9CompileShaderFromFile_t ;


 scalar_t__ D3D9CompileShader ;
 scalar_t__ D3D9CompileShaderFromFile ;
 scalar_t__ D3D9Create ;
 scalar_t__ D3D9CreateFontIndirect ;
 scalar_t__ D3D9CreateTextureFromFile ;
 scalar_t__ D3DXCompileShader ;
 scalar_t__ D3DXCompileShaderFromFile ;
 scalar_t__ D3DXCreateFontIndirect ;
 scalar_t__ D3DXCreateTextureFromFileExA ;
 scalar_t__ Direct3DCreate9 ;
 int d3d9_SDKVersion ;
 int d3d9_deinitialize_symbols () ;
 int d3d9_dylib_initialized ;
 scalar_t__ dylib_load (char*) ;
 scalar_t__ dylib_load_d3d9x () ;
 scalar_t__ dylib_proc (scalar_t__,char*) ;
 scalar_t__ g_d3d9_dll ;
 scalar_t__ g_d3d9x_dll ;

bool d3d9_initialize_symbols(enum gfx_ctx_api api)
{
   d3d9_SDKVersion = 31;
   D3D9Create = Direct3DCreate9;
   if (!D3D9Create)
      goto error;
   return 1;

error:
   d3d9_deinitialize_symbols();
   return 0;
}
