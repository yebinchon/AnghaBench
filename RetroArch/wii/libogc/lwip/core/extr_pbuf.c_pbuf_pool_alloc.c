
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pbuf {struct pbuf* next; } ;
struct TYPE_3__ {scalar_t__ used; scalar_t__ max; int alloc_locked; } ;
struct TYPE_4__ {TYPE_1__ pbuf; } ;


 int SYS_ARCH_DECL_PROTECT (int ) ;
 int SYS_ARCH_PROTECT (int ) ;
 int SYS_ARCH_UNPROTECT (int ) ;
 TYPE_2__ lwip_stats ;
 int old_level ;
 struct pbuf* pbuf_pool ;
 int pbuf_pool_alloc_lock ;
 scalar_t__ pbuf_pool_free_lock ;

__attribute__((used)) static struct pbuf *
pbuf_pool_alloc(void)
{
  struct pbuf *p = ((void*)0);

  SYS_ARCH_DECL_PROTECT(old_level);
  SYS_ARCH_PROTECT(old_level);




  if (pbuf_pool_free_lock) {



    return ((void*)0);
  }
  pbuf_pool_alloc_lock = 1;
  if (!pbuf_pool_free_lock) {

    p = pbuf_pool;
    if (p) {
      pbuf_pool = p->next;
    }





  }
  pbuf_pool_alloc_lock = 0;
  SYS_ARCH_UNPROTECT(old_level);
  return p;
}
