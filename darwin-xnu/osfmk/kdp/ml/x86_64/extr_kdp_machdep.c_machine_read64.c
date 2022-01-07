
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int caddr_t ;
typedef int addr64_t ;


 int kdp_machine_vm_read (int ,int ,int ) ;

unsigned
machine_read64(addr64_t srcaddr, caddr_t dstaddr, uint32_t len)
{
 return (unsigned)kdp_machine_vm_read(srcaddr, dstaddr, len);
}
