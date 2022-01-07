
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPD3DXINCLUDE ;
typedef int LPD3DXCONSTANTTABLE ;
typedef int LPD3DXBUFFER ;
typedef int LPCTSTR ;
typedef int LPCSTR ;
typedef int DWORD ;
typedef int D3DXMACRO ;


 scalar_t__ D3D9CompileShaderFromFile (int ,int const*,int ,int ,int ,int ,int *,int *,int *) ;

bool d3d9x_compile_shader_from_file(
      const char *src,
      const void *pdefines,
      void *pinclude,
      const char *pfunctionname,
      const char *pprofile,
      unsigned flags,
      void *ppshader,
      void *pperrormsgs,
      void *ppconstanttable)
{
   return 0;
}
