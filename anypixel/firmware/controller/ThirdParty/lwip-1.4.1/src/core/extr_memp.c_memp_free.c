
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct memp {struct memp* next; } ;
typedef size_t memp_t ;
typedef int mem_ptr_t ;


 int LWIP_ASSERT (char*,int) ;
 int * MEMP_SIZE ;
 int MEMP_STATS_DEC (int ,size_t) ;
 int MEM_ALIGNMENT ;
 int SYS_ARCH_DECL_PROTECT (int ) ;
 int SYS_ARCH_PROTECT (int ) ;
 int SYS_ARCH_UNPROTECT (int ) ;
 int memp_overflow_check_all () ;
 int memp_overflow_check_element_overflow (struct memp*,size_t) ;
 int memp_overflow_check_element_underflow (struct memp*,size_t) ;
 int memp_sanity () ;
 struct memp** memp_tab ;
 int old_level ;
 int used ;

void
memp_free(memp_t type, void *mem)
{
  struct memp *memp;
  SYS_ARCH_DECL_PROTECT(old_level);

  if (mem == ((void*)0)) {
    return;
  }
  LWIP_ASSERT("memp_free: mem properly aligned",
                ((mem_ptr_t)mem % MEM_ALIGNMENT) == 0);

  memp = (struct memp *)(void *)((u8_t*)mem - MEMP_SIZE);

  SYS_ARCH_PROTECT(old_level);
  MEMP_STATS_DEC(used, type);

  memp->next = memp_tab[type];
  memp_tab[type] = memp;





  SYS_ARCH_UNPROTECT(old_level);
}
