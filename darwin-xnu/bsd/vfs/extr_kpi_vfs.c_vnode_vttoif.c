
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum vtype { ____Placeholder_vtype } vtype ;


 int* vttoif_tab ;

int
vnode_vttoif(enum vtype indx)
{
 return(vttoif_tab[(int)(indx)]);
}
