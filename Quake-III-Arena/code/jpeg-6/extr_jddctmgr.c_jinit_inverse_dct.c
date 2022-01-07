
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct jpeg_inverse_dct {int dummy; } ;
typedef TYPE_3__* my_idct_ptr ;
struct TYPE_10__ {scalar_t__ dct_table; } ;
typedef TYPE_4__ jpeg_component_info ;
typedef TYPE_5__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_11__ {int num_components; TYPE_2__* mem; TYPE_4__* comp_info; struct jpeg_inverse_dct* idct; } ;
struct TYPE_7__ {int start_pass; } ;
struct TYPE_9__ {int* cur_method; TYPE_1__ pub; } ;
struct TYPE_8__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int JPOOL_IMAGE ;
 int MEMZERO (scalar_t__,int ) ;
 int SIZEOF (int ) ;
 int multiplier_table ;
 int my_idct_controller ;
 int start_pass ;
 scalar_t__ stub1 (int ,int ,int ) ;
 scalar_t__ stub2 (int ,int ,int ) ;

void
jinit_inverse_dct (j_decompress_ptr cinfo)
{
  my_idct_ptr idct;
  int ci;
  jpeg_component_info *compptr;

  idct = (my_idct_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_idct_controller));
  cinfo->idct = (struct jpeg_inverse_dct *) idct;
  idct->pub.start_pass = start_pass;

  for (ci = 0, compptr = cinfo->comp_info; ci < cinfo->num_components;
       ci++, compptr++) {

    compptr->dct_table =
      (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
      SIZEOF(multiplier_table));
    MEMZERO(compptr->dct_table, SIZEOF(multiplier_table));

    idct->cur_method[ci] = -1;
  }
}
