
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_pathconf_args {int a_name; int* a_retval; } ;


 int DEVMAXNAMESIZE ;
 int DEVMAXPATHSIZE ;
 int EINVAL ;
__attribute__((used)) static int
devs_vnop_pathconf(
 struct vnop_pathconf_args *ap)





{
 switch (ap->a_name) {
 case 131:

  *ap->a_retval = 32767;
  break;
 case 130:
  *ap->a_retval = DEVMAXNAMESIZE - 1;
  break;
 case 128:
  *ap->a_retval = DEVMAXPATHSIZE - 1;
  break;
 case 132:
  *ap->a_retval = 200112;
  break;
 case 129:
  *ap->a_retval = 0;
  break;
 case 133:
  *ap->a_retval = 1;
  break;
 case 134:
  *ap->a_retval = 1;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
