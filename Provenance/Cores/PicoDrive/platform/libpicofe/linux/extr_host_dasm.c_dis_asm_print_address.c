
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int dummy; } ;
typedef scalar_t__ bfd_vma ;


 char* lookup_name (scalar_t__) ;
 int printf (char*,...) ;

__attribute__((used)) static void
dis_asm_print_address(bfd_vma addr, struct disassemble_info *info)
{
  const char *name;

  printf("%08x", (int)addr);

  name = lookup_name(addr);
  if (name != ((void*)0))
    printf(" <%s>", name);
}
