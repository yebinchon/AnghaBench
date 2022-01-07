
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct mem {int used; scalar_t__ next; } ;
typedef scalar_t__ mem_size_t ;
typedef int mem_ptr_t ;


 int LWIP_ASSERT (char*,int) ;
 int LWIP_DBG_LEVEL_SERIOUS ;
 int LWIP_DBG_LEVEL_SEVERE ;
 int LWIP_DBG_TRACE ;
 int LWIP_DEBUGF (int,char*) ;
 int LWIP_MEM_FREE_DECL_PROTECT () ;
 int LWIP_MEM_FREE_PROTECT () ;
 int LWIP_MEM_FREE_UNPROTECT () ;
 int MEM_ALIGNMENT ;
 int MEM_DEBUG ;
 int MEM_STATS_DEC_USED (int ,scalar_t__) ;
 int MEM_STATS_INC (int ) ;
 int * SIZEOF_STRUCT_MEM ;
 int SYS_ARCH_DECL_PROTECT (int ) ;
 int SYS_ARCH_PROTECT (int ) ;
 int SYS_ARCH_UNPROTECT (int ) ;
 int illegal ;
 int lev ;
 struct mem* lfree ;
 int mem_free_count ;
 int plug_holes (struct mem*) ;
 int * ram ;
 scalar_t__ ram_end ;
 int used ;

void
mem_free(void *rmem)
{
  struct mem *mem;
  LWIP_MEM_FREE_DECL_PROTECT();

  if (rmem == ((void*)0)) {
    LWIP_DEBUGF(MEM_DEBUG | LWIP_DBG_TRACE | LWIP_DBG_LEVEL_SERIOUS, ("mem_free(p == NULL) was called.\n"));
    return;
  }
  LWIP_ASSERT("mem_free: sanity check alignment", (((mem_ptr_t)rmem) & (MEM_ALIGNMENT-1)) == 0);

  LWIP_ASSERT("mem_free: legal memory", (u8_t *)rmem >= (u8_t *)ram &&
    (u8_t *)rmem < (u8_t *)ram_end);

  if ((u8_t *)rmem < (u8_t *)ram || (u8_t *)rmem >= (u8_t *)ram_end) {
    SYS_ARCH_DECL_PROTECT(lev);
    LWIP_DEBUGF(MEM_DEBUG | LWIP_DBG_LEVEL_SEVERE, ("mem_free: illegal memory\n"));

    SYS_ARCH_PROTECT(lev);
    MEM_STATS_INC(illegal);
    SYS_ARCH_UNPROTECT(lev);
    return;
  }

  LWIP_MEM_FREE_PROTECT();

  mem = (struct mem *)(void *)((u8_t *)rmem - SIZEOF_STRUCT_MEM);

  LWIP_ASSERT("mem_free: mem->used", mem->used);

  mem->used = 0;

  if (mem < lfree) {

    lfree = mem;
  }

  MEM_STATS_DEC_USED(used, mem->next - (mem_size_t)(((u8_t *)mem - ram)));


  plug_holes(mem);



  LWIP_MEM_FREE_UNPROTECT();
}
