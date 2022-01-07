
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;
typedef enum vtype { ____Placeholder_vtype } vtype ;
 int vnode_makeimode (int const,int ) ;

int
vtonfsv2_mode(enum vtype vtype, mode_t m)
{
 switch (vtype) {
 case 131:
 case 130:
 case 134:
 case 137:
 case 136:
 case 132:
 case 129:
  return vnode_makeimode(vtype, m);
 case 133:
  return vnode_makeimode(136, m);
 case 138:
 case 128:
 case 135:
 default:
  return vnode_makeimode(131, m);
 }
}
