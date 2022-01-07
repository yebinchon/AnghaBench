
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct jpeg_forward_dct {int dummy; } ;
typedef TYPE_3__* my_fdct_ptr ;
typedef TYPE_4__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_10__ {int dct_method; struct jpeg_forward_dct* fdct; TYPE_1__* mem; } ;
struct TYPE_8__ {void* forward_DCT; int start_pass; } ;
struct TYPE_9__ {int ** float_divisors; int ** divisors; int do_float_dct; TYPE_2__ pub; int do_dct; } ;
struct TYPE_7__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int ERREXIT (TYPE_4__*,int ) ;



 int JERR_NOT_COMPILED ;
 int JPOOL_IMAGE ;
 int NUM_QUANT_TBLS ;
 int SIZEOF (int ) ;
 void* forward_DCT ;
 void* forward_DCT_float ;
 int jpeg_fdct_float ;
 int jpeg_fdct_ifast ;
 int jpeg_fdct_islow ;
 int my_fdct_controller ;
 int start_pass_fdctmgr ;
 scalar_t__ stub1 (int ,int ,int ) ;

void
jinit_forward_dct (j_compress_ptr cinfo)
{
  my_fdct_ptr fdct;
  int i;

  fdct = (my_fdct_ptr)
    (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
    SIZEOF(my_fdct_controller));
  cinfo->fdct = (struct jpeg_forward_dct *) fdct;
  fdct->pub.start_pass = start_pass_fdctmgr;

  switch (cinfo->dct_method) {
  default:
    ERREXIT(cinfo, JERR_NOT_COMPILED);
    break;
  }


  for (i = 0; i < NUM_QUANT_TBLS; i++) {
    fdct->divisors[i] = ((void*)0);



  }
}
