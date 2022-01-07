
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int j_common_ptr ;
struct TYPE_2__ {int (* Free ) (void*) ;} ;


 TYPE_1__ ri ;
 int stub1 (void*) ;

void
jpeg_free_small (j_common_ptr cinfo, void * object, size_t sizeofobject)
{
  ri.Free(object);
}
