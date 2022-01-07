
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* my_dest_ptr ;
typedef TYPE_3__* j_compress_ptr ;
struct TYPE_7__ {int dest; } ;
struct TYPE_5__ {size_t free_in_buffer; } ;
struct TYPE_6__ {size_t size; TYPE_1__ pub; } ;


 size_t hackSize ;

void term_destination (j_compress_ptr cinfo)
{
  my_dest_ptr dest = (my_dest_ptr) cinfo->dest;
  size_t datacount = dest->size - dest->pub.free_in_buffer;
  hackSize = datacount;
}
