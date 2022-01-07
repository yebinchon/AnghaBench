
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;


 int kvtophys (int ) ;

vm_offset_t ml_vtophys(
 vm_offset_t vaddr)
{
 return (vm_offset_t)kvtophys(vaddr);
}
