
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int io_return_t ;
typedef TYPE_1__* io_req_t ;
typedef int dev_t ;
struct TYPE_3__ {int io_error; } ;


 int D_SUCCESS ;

io_return_t
gprofopen(dev_t dev,
   int flags,
   io_req_t ior)
{
 ior->io_error = D_SUCCESS;
 return(0);
}
