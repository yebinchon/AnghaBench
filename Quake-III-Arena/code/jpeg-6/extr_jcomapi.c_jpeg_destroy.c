
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_6__ {scalar_t__ global_state; TYPE_1__* mem; } ;
struct TYPE_5__ {int (* self_destruct ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;

void
jpeg_destroy (j_common_ptr cinfo)
{


  if (cinfo->mem != ((void*)0))
    (*cinfo->mem->self_destruct) (cinfo);
  cinfo->mem = ((void*)0);
  cinfo->global_state = 0;
}
