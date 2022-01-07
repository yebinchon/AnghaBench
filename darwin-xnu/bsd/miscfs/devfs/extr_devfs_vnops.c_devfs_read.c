
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vnop_read_args {TYPE_3__* a_vp; int a_context; int a_uio; } ;
struct TYPE_5__ {int dn_access; } ;
typedef TYPE_1__ devnode_t ;
struct TYPE_6__ {int v_type; } ;


 int EINVAL ;

 int VNOP_READDIR (TYPE_3__*,int ,int ,int *,int *,int ) ;
 TYPE_1__* VTODN (TYPE_3__*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
devfs_read(struct vnop_read_args *ap)






{
     devnode_t * dn_p = VTODN(ap->a_vp);

 switch (ap->a_vp->v_type) {
   case 128: {
       dn_p->dn_access = 1;

       return VNOP_READDIR(ap->a_vp, ap->a_uio, 0, ((void*)0), ((void*)0), ap->a_context);
   }
   default: {
       printf("devfs_read(): bad file type %d", ap->a_vp->v_type);
       return(EINVAL);
   }
 }
}
