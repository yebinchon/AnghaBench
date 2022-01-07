
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int io_return_t ;
typedef int io_req_t ;
typedef int dev_t ;


 int block_io (int ,int ,int ) ;
 int gprofstrategy ;
 int minphys ;

io_return_t
gprofwrite(dev_t dev,
    io_req_t ior)
{
 return (block_io(gprofstrategy, minphys, ior));
}
