
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* j_common_ptr ;
struct TYPE_6__ {scalar_t__ is_decompressor; int global_state; TYPE_1__* mem; } ;
struct TYPE_5__ {int (* free_pool ) (TYPE_2__*,int) ;} ;


 int CSTATE_START ;
 int DSTATE_START ;
 int JPOOL_NUMPOOLS ;
 int JPOOL_PERMANENT ;
 int stub1 (TYPE_2__*,int) ;

void
jpeg_abort (j_common_ptr cinfo)
{
  int pool;




  for (pool = JPOOL_NUMPOOLS-1; pool > JPOOL_PERMANENT; pool--) {
    (*cinfo->mem->free_pool) (cinfo, pool);
  }


  cinfo->global_state = (cinfo->is_decompressor ? DSTATE_START : CSTATE_START);
}
