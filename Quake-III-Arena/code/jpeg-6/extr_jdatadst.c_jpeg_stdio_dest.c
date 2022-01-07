
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct jpeg_destination_mgr {int dummy; } ;
typedef TYPE_3__* my_dest_ptr ;
typedef TYPE_4__* j_compress_ptr ;
typedef int j_common_ptr ;
struct TYPE_9__ {struct jpeg_destination_mgr* dest; TYPE_2__* mem; } ;
struct TYPE_6__ {int term_destination; int empty_output_buffer; int init_destination; } ;
struct TYPE_8__ {int * outfile; TYPE_1__ pub; } ;
struct TYPE_7__ {scalar_t__ (* alloc_small ) (int ,int ,int ) ;} ;
typedef int FILE ;


 int JPOOL_PERMANENT ;
 int SIZEOF (int ) ;
 int empty_output_buffer ;
 int init_destination ;
 int my_destination_mgr ;
 scalar_t__ stub1 (int ,int ,int ) ;
 int term_destination ;

void
jpeg_stdio_dest (j_compress_ptr cinfo, FILE * outfile)
{
  my_dest_ptr dest;







  if (cinfo->dest == ((void*)0)) {
    cinfo->dest = (struct jpeg_destination_mgr *)
      (*cinfo->mem->alloc_small) ((j_common_ptr) cinfo, JPOOL_PERMANENT,
      SIZEOF(my_destination_mgr));
  }

  dest = (my_dest_ptr) cinfo->dest;
  dest->pub.init_destination = init_destination;
  dest->pub.empty_output_buffer = empty_output_buffer;
  dest->pub.term_destination = term_destination;
  dest->outfile = outfile;
}
