
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPDIRECT3DVERTEXDECLARATION9 ;
typedef int * LPDIRECT3DVERTEXBUFFER9 ;


 int IDirect3DVertexBuffer9_Release (int *) ;
 int d3d9_vertex_declaration_free (int *) ;

void d3d9_vertex_buffer_free(void *vertex_data, void *vertex_declaration)
{
   if (vertex_data)
   {
      LPDIRECT3DVERTEXBUFFER9 buf =
         (LPDIRECT3DVERTEXBUFFER9)vertex_data;
      IDirect3DVertexBuffer9_Release(buf);
      buf = ((void*)0);
   }

   if (vertex_declaration)
   {
      LPDIRECT3DVERTEXDECLARATION9 vertex_decl =
         (LPDIRECT3DVERTEXDECLARATION9)vertex_declaration;
      d3d9_vertex_declaration_free(vertex_decl);
      vertex_decl = ((void*)0);
   }
}
