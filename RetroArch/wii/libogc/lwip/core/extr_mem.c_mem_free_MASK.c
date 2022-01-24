#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8_t ;
struct mem {int used; int next; } ;
struct TYPE_3__ {int /*<<< orphan*/  used; int /*<<< orphan*/  err; } ;
struct TYPE_4__ {TYPE_1__ mem; } ;

/* Variables and functions */
 int DBG_TRACE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int MEM_DEBUG ; 
 int /*<<< orphan*/ * SIZEOF_STRUCT_MEM ; 
 struct mem* lfree ; 
 TYPE_2__ lwip_stats ; 
 int /*<<< orphan*/  mem_sem ; 
 int /*<<< orphan*/  FUNC4 (struct mem*) ; 
 int /*<<< orphan*/ * ram ; 
 scalar_t__ ram_end ; 

void
FUNC5(void *rmem)
{
  struct mem *mem;

  if (rmem == NULL) {
    FUNC1(MEM_DEBUG | DBG_TRACE | 2, ("mem_free(p == NULL) was called.\n"));
    return;
  }

  FUNC3(mem_sem);

  FUNC0("mem_free: legal memory", (u8_t *)rmem >= (u8_t *)ram &&
    (u8_t *)rmem < (u8_t *)ram_end);

  if ((u8_t *)rmem < (u8_t *)ram || (u8_t *)rmem >= (u8_t *)ram_end) {
    FUNC1(MEM_DEBUG | 3, ("mem_free: illegal memory\n"));
#if MEM_STATS
    ++lwip_stats.mem.err;
#endif /* MEM_STATS */
    FUNC2(mem_sem);
    return;
  }
  mem = (struct mem *)((u8_t *)rmem - SIZEOF_STRUCT_MEM);

  FUNC0("mem_free: mem->used", mem->used);

  mem->used = 0;

  if (mem < lfree) {
    lfree = mem;
  }

#if MEM_STATS
  lwip_stats.mem.used -= mem->next - ((u8_t *)mem - ram);

#endif /* MEM_STATS */
  FUNC4(mem);
  FUNC2(mem_sem);
}