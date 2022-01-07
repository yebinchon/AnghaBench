
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VTTOIF (int) ;

int
vnode_makeimode(int indx, int mode)
{
 return (int)(VTTOIF(indx) | (mode));
}
