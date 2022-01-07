
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pbuf {int ref; } ;


 int SYS_ARCH_DECL_PROTECT (int ) ;
 int SYS_ARCH_PROTECT (int ) ;
 int SYS_ARCH_UNPROTECT (int ) ;
 int old_level ;

void
pbuf_ref(struct pbuf *p)
{
  SYS_ARCH_DECL_PROTECT(old_level);

  if (p != ((void*)0)) {
    SYS_ARCH_PROTECT(old_level);
    ++(p->ref);
    SYS_ARCH_UNPROTECT(old_level);
  }
}
