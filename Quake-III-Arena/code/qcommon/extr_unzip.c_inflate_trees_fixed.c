
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int z_streamp ;
typedef int uInt ;
typedef int inflate_huft ;


 int Z_OK ;
 int fixed_bd ;
 int fixed_bl ;
 int * fixed_td ;
 int * fixed_tl ;

int inflate_trees_fixed(uInt *bl, uInt *bd, inflate_huft * *tl, inflate_huft * *td, z_streamp z)





{
  *bl = fixed_bl;
  *bd = fixed_bd;
  *tl = fixed_tl;
  *td = fixed_td;
  return Z_OK;
}
