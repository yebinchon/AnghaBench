
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {scalar_t__ e_type; scalar_t__ e_machine; } ;
typedef TYPE_1__ Elf32_Ehdr ;


 scalar_t__ EM_PPC ;
 scalar_t__ ET_EXEC ;
 int IS_ELF (TYPE_1__) ;

__attribute__((used)) static int32_t valid_elf_image (void *addr)
{
   Elf32_Ehdr *ehdr = (Elf32_Ehdr*)addr;

   if (!IS_ELF (*ehdr))
      return 0;

   if (ehdr->e_type != ET_EXEC)
      return -1;

   if (ehdr->e_machine != EM_PPC)
      return -1;

   return 1;
}
