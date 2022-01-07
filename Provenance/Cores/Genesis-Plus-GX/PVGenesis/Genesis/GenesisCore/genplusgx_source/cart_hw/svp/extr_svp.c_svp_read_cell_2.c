
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
typedef int uint16 ;
struct TYPE_2__ {scalar_t__ dram; } ;


 TYPE_1__* svp ;

uint32 svp_read_cell_2(uint32 address)
{
  address >>= 1;
  address = (address & 0x7801) | ((address & 0x1e) << 6) | ((address & 0x7e0) >> 4);
  return *(uint16 *)(svp->dram + (address & 0x1fffe));
}
