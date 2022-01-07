
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int j_common_ptr ;
struct TYPE_2__ {scalar_t__ (* Malloc ) (size_t) ;} ;


 TYPE_1__ ri ;
 scalar_t__ stub1 (size_t) ;

void *
jpeg_get_small (j_common_ptr cinfo, size_t sizeofobject)
{
  return (void *) ri.Malloc(sizeofobject);
}
