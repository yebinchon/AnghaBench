
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* begin_write ) (void*) ;} ;


 TYPE_1__* internal_nbio ;
 int stub1 (void*) ;

void nbio_begin_write(void *data)
{
   internal_nbio->begin_write(data);
}
