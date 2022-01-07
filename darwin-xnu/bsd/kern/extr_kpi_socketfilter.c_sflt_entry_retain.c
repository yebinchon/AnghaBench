
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_filter_entry {int sfe_refcount; } ;


 scalar_t__ OSIncrementAtomic (int *) ;
 int panic (char*) ;

__attribute__((used)) static void
sflt_entry_retain(struct socket_filter_entry *entry)
{
 if (OSIncrementAtomic(&entry->sfe_refcount) <= 0) {
  panic("sflt_entry_retain - sfe_refcount <= 0\n");

 }
}
