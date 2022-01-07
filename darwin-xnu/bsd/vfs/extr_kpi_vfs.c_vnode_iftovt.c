
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode ;
typedef enum vtype { ____Placeholder_vtype } vtype ;


 int S_IFMT ;
 int* iftovt_tab ;

enum vtype
vnode_iftovt(int mode)
{
 return(iftovt_tab[((mode) & S_IFMT) >> 12]);
}
