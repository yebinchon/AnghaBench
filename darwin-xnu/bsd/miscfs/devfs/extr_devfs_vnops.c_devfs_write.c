
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vnop_write_args {TYPE_1__* a_vp; } ;
struct TYPE_2__ {int v_type; } ;


 int EINVAL ;
 int EISDIR ;

 int printf (char*,int) ;

__attribute__((used)) static int
devfs_write(struct vnop_write_args *ap)






{
 switch (ap->a_vp->v_type) {
 case 128:
  return(EISDIR);
 default:
  printf("devfs_write(): bad file type %d", ap->a_vp->v_type);
  return (EINVAL);
 }
}
