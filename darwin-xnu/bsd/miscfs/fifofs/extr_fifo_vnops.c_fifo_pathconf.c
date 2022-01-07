
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_pathconf_args {int a_name; int* a_retval; } ;


 int EINVAL ;
 int LINK_MAX ;
 int PIPE_BUF ;




int
fifo_pathconf(struct vnop_pathconf_args *ap)
{
 switch (ap->a_name) {
 case 129:
  *ap->a_retval = LINK_MAX;
  return (0);
 case 128:
  *ap->a_retval = PIPE_BUF;
  return (0);
 case 130:
  *ap->a_retval = 200112;
  return (0);
 default:
  return (EINVAL);
 }

}
