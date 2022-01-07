
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_offset_t ;
struct TYPE_3__ {int pml4; int pdpt; int pd; int pt; } ;
typedef TYPE_1__ split_addr_t ;



__attribute__((used)) static split_addr_t
split_address(vm_offset_t address)
{
 split_addr_t addr;

 addr.pml4 = (address >> 39) & 0x1ff;
 addr.pdpt = (address >> 30) & 0x1ff;
 addr.pd = (address >> 21) & 0x1ff;
 addr.pt = (address >> 12) & 0x1ff;


 return addr;
}
