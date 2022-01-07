
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct d3d_matrix {int dummy; } ;
typedef int LPDIRECT3DDEVICE8 ;
typedef int D3DMATRIX ;


 int D3DTS_PROJECTION ;
 int D3DTS_VIEW ;
 int D3DTS_WORLD ;
 int d3d8_set_transform (int ,int ,int *) ;
 int d3d_matrix_identity (struct d3d_matrix*) ;
 int d3d_matrix_transpose (struct d3d_matrix*,void const*) ;

void d3d8_set_mvp(void *data, const void *mat_data)
{
   struct d3d_matrix matrix;
   LPDIRECT3DDEVICE8 d3dr = (LPDIRECT3DDEVICE8)data;

   d3d_matrix_identity(&matrix);

   d3d8_set_transform(d3dr, D3DTS_PROJECTION, (D3DMATRIX*)&matrix);
   d3d8_set_transform(d3dr, D3DTS_VIEW, (D3DMATRIX*)&matrix);

   if (mat_data)
      d3d_matrix_transpose(&matrix, mat_data);

   d3d8_set_transform(d3dr, D3DTS_WORLD, (D3DMATRIX*)&matrix);
}
