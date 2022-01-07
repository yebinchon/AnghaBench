
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct jpeg_comp_master {int dummy; } ;
typedef TYPE_3__* my_master_ptr ;
typedef TYPE_4__* j_compress_ptr ;
typedef int j_common_ptr ;
typedef scalar_t__ boolean ;
struct TYPE_12__ {int num_scans; scalar_t__ optimize_coding; void* progressive_mode; int * scan_info; struct jpeg_comp_master* master; TYPE_1__* mem; } ;
struct TYPE_10__ {void* is_last_pass; int finish_pass; int pass_startup; int prepare_for_pass; } ;
struct TYPE_11__ {int total_passes; scalar_t__ pass_number; scalar_t__ scan_number; int pass_type; TYPE_2__ pub; } ;
struct TYPE_9__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;


 int ERREXIT (TYPE_4__*,int ) ;
 void* FALSE ;
 int JERR_NOT_COMPILED ;
 int JPOOL_IMAGE ;
 int SIZEOF (int ) ;
 scalar_t__ TRUE ;
 int finish_pass_master ;
 int huff_opt_pass ;
 int initial_setup (TYPE_4__*) ;
 int main_pass ;
 int my_comp_master ;
 int output_pass ;
 int pass_startup ;
 int prepare_for_pass ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int validate_script (TYPE_4__*) ;

void
jinit_c_master_control (j_compress_ptr cinfo, boolean transcode_only)
{
  my_master_ptr master;

  master = (my_master_ptr)
      (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_IMAGE,
      SIZEOF(my_comp_master));
  cinfo->master = (struct jpeg_comp_master *) master;
  master->pub.prepare_for_pass = prepare_for_pass;
  master->pub.pass_startup = pass_startup;
  master->pub.finish_pass = finish_pass_master;
  master->pub.is_last_pass = FALSE;


  initial_setup(cinfo);

  if (cinfo->scan_info != ((void*)0)) {



    ERREXIT(cinfo, JERR_NOT_COMPILED);

  } else {
    cinfo->progressive_mode = FALSE;
    cinfo->num_scans = 1;
  }

  if (cinfo->progressive_mode)
    cinfo->optimize_coding = TRUE;


  if (transcode_only) {

    if (cinfo->optimize_coding)
      master->pass_type = huff_opt_pass;
    else
      master->pass_type = output_pass;
  } else {

    master->pass_type = main_pass;
  }
  master->scan_number = 0;
  master->pass_number = 0;
  if (cinfo->optimize_coding)
    master->total_passes = cinfo->num_scans * 2;
  else
    master->total_passes = cinfo->num_scans;
}
