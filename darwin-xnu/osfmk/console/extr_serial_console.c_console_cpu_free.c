
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {scalar_t__ buffer; } ;


 int CPU_BUF_FREE_HEX ;
 uintptr_t KERN_CONSOLE_BUF_SIZE ;
 int assert (int) ;
 TYPE_1__ console_ring ;

void
console_cpu_free(void * buf)
{
 assert((uintptr_t)buf > (uintptr_t)console_ring.buffer);
 assert((uintptr_t)buf < (uintptr_t)console_ring.buffer + KERN_CONSOLE_BUF_SIZE);
 if (buf != ((void*)0))
  *(uint32_t *)buf = CPU_BUF_FREE_HEX;
}
