
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct jpeg_decomp_master {int dummy; } ;
typedef TYPE_3__* my_master_ptr ;
typedef TYPE_4__* j_decompress_ptr ;
typedef int j_common_ptr ;
struct TYPE_10__ {struct jpeg_decomp_master* master; TYPE_1__* mem; } ;
struct TYPE_8__ {int is_dummy_pass; int finish_output_pass; int prepare_for_output_pass; } ;
struct TYPE_9__ {TYPE_2__ pub; } ;
struct TYPE_7__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int FALSE ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 int finish_output_pass ;
 int master_selection (TYPE_4__*) ;
 int my_decomp_master ;
 int prepare_for_output_pass ;
 scalar_t__ stub1 (int ,int ,int ) ;

void
jinit_master_decompress (j_decompress_ptr cinfo)
{
  my_master_ptr master;

  master = (my_master_ptr)
      (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
      SIZEOF(my_decomp_master));
  cinfo->master = (struct jpeg_decomp_master *) master;
  master->pub.prepare_for_output_pass = prepare_for_output_pass;
  master->pub.finish_output_pass = finish_output_pass;

  master->pub.is_dummy_pass = FALSE;

  master_selection(cinfo);
}
