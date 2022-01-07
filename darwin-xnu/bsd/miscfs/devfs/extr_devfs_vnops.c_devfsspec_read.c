
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_read_args {int a_vp; } ;
typedef int devnode_t ;


 int DEVFS_UPDATE_ACCESS ;
 int VOCALL (int ,int ,struct vnop_read_args*) ;
 int VOFFSET (int ) ;
 int * VTODN (int ) ;
 int devfs_consider_time_update (int *,int ) ;
 int spec_vnodeop_p ;
 int vnop_read ;

__attribute__((used)) static int
devfsspec_read(struct vnop_read_args *ap)






{
 devnode_t * dnp = VTODN(ap->a_vp);

 devfs_consider_time_update(dnp, DEVFS_UPDATE_ACCESS);

 return (VOCALL (spec_vnodeop_p, VOFFSET(vnop_read), ap));
}
