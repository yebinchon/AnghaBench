
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_vma ;


 int di ;
 int host_dasm_init () ;
 int init_done ;
 char* lookup_name (scalar_t__) ;
 scalar_t__ print_insn_func (scalar_t__,int *) ;
 int printf (char*,...) ;

void host_dasm(void *addr, int len)
{
  bfd_vma vma_end, vma = (bfd_vma)(long)addr;
  const char *name;

  if (!init_done)
    host_dasm_init();

  vma_end = vma + len;
  while (vma < vma_end) {
    name = lookup_name(vma);
    if (name != ((void*)0))
      printf("%s:\n", name);

    printf("   %08lx ", (long)vma);
    vma += print_insn_func(vma, &di);
    printf("\n");
  }
}
