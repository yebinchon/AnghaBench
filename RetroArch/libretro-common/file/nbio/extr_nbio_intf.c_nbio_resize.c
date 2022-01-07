
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* resize ) (void*,size_t) ;} ;


 TYPE_1__* internal_nbio ;
 int stub1 (void*,size_t) ;

void nbio_resize(void *data, size_t len)
{
   internal_nbio->resize(data, len);
}
