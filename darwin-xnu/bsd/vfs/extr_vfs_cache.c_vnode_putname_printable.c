
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* unknown_vnodename ;
 int vnode_putname (char const*) ;

void
vnode_putname_printable(const char *name)
{
 if (name == unknown_vnodename)
  return;
 vnode_putname(name);
}
