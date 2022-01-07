
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8_t ;
struct memp {struct memp* next; } ;
typedef size_t memp_t ;
struct TYPE_4__ {TYPE_1__* memp; } ;
struct TYPE_3__ {int used; } ;


 int LWIP_ASSERT (char*,int ) ;
 int LWP_SemPost (int ) ;
 int LWP_SemWait (int ) ;
 int SYS_ARCH_DECL_PROTECT (int ) ;
 int SYS_ARCH_PROTECT (int ) ;
 int SYS_ARCH_UNPROTECT (int ) ;
 TYPE_2__ lwip_stats ;
 int memp_sanity () ;
 struct memp** memp_tab ;
 int mutex ;
 int old_level ;

void
memp_free(memp_t type, void *mem)
{
  struct memp *memp;




  if (mem == ((void*)0)) {
    return;
  }
  memp = (struct memp *)((u8_t *)mem - sizeof(struct memp));




  LWP_SemWait(mutex);






  memp->next = memp_tab[type];
  memp_tab[type] = memp;
    LWP_SemPost(mutex);

}
