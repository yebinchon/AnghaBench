
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int err_t ;


 int mem_free ;
 int tcpip_callback_with_block (int ,void*,int ) ;

err_t
mem_free_callback(void *m)
{
  return tcpip_callback_with_block(mem_free, m, 0);
}
