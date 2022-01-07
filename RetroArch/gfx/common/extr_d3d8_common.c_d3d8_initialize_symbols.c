
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum gfx_ctx_api { ____Placeholder_gfx_ctx_api } gfx_ctx_api ;
typedef scalar_t__ D3DXCreateFontIndirect_t ;
typedef scalar_t__ D3DCreate_t ;
typedef scalar_t__ D3DCreateTextureFromFile_t ;


 scalar_t__ D3DCreate ;
 scalar_t__ D3DCreateFontIndirect ;
 scalar_t__ D3DCreateTextureFromFile ;
 scalar_t__ D3DXCreateFontIndirect ;
 scalar_t__ D3DXCreateTextureFromFileExA ;
 scalar_t__ Direct3DCreate8 ;
 int SDKVersion ;
 int d3d8_deinitialize_symbols () ;
 int dylib_initialized ;
 scalar_t__ dylib_load (char*) ;
 scalar_t__ dylib_proc (scalar_t__,char*) ;
 scalar_t__ g_d3d8_dll ;
 scalar_t__ g_d3d8x_dll ;

bool d3d8_initialize_symbols(enum gfx_ctx_api api)
{
   SDKVersion = 220;
   D3DCreate = Direct3DCreate8;






   if (!D3DCreate)
      goto error;
   return 1;

error:
   d3d8_deinitialize_symbols();
   return 0;
}
