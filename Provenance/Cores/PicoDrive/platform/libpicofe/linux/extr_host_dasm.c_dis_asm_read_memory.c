
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_byte ;


 int memcpy (int *,void*,unsigned int) ;

__attribute__((used)) static int
dis_asm_read_memory(bfd_vma memaddr, bfd_byte *myaddr, unsigned int len,
                     struct disassemble_info *info)
{
  memcpy(myaddr, (void *)(int)memaddr, len);
  return 0;
}
