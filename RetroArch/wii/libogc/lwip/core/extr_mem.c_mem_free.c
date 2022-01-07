
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct mem {int used; int next; } ;
struct TYPE_3__ {int used; int err; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;


 int DBG_TRACE ;
 int LWIP_ASSERT (char*,int) ;
 int LWIP_DEBUGF (int,char*) ;
 int LWP_SemPost (int ) ;
 int LWP_SemWait (int ) ;
 int MEM_DEBUG ;
 int * SIZEOF_STRUCT_MEM ;
 struct mem* lfree ;
 TYPE_2__ lwip_stats ;
 int mem_sem ;
 int plug_holes (struct mem*) ;
 int * ram ;
 scalar_t__ ram_end ;

void
mem_free(void *rmem)
{
  struct mem *mem;

  if (rmem == ((void*)0)) {
    LWIP_DEBUGF(MEM_DEBUG | DBG_TRACE | 2, ("mem_free(p == NULL) was called.\n"));
    return;
  }

  LWP_SemWait(mem_sem);

  LWIP_ASSERT("mem_free: legal memory", (u8_t *)rmem >= (u8_t *)ram &&
    (u8_t *)rmem < (u8_t *)ram_end);

  if ((u8_t *)rmem < (u8_t *)ram || (u8_t *)rmem >= (u8_t *)ram_end) {
    LWIP_DEBUGF(MEM_DEBUG | 3, ("mem_free: illegal memory\n"));



    LWP_SemPost(mem_sem);
    return;
  }
  mem = (struct mem *)((u8_t *)rmem - SIZEOF_STRUCT_MEM);

  LWIP_ASSERT("mem_free: mem->used", mem->used);

  mem->used = 0;

  if (mem < lfree) {
    lfree = mem;
  }





  plug_holes(mem);
  LWP_SemPost(mem_sem);
}
