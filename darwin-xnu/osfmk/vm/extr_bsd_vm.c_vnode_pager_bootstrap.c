
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
struct vnode_pager {int dummy; } ;


 int FALSE ;
 scalar_t__ MAX_VNODE ;
 int PAGE_SIZE ;
 int TRUE ;
 int Z_CALLERACCT ;
 int Z_NOENCRYPT ;
 int apple_protect_pager_bootstrap () ;
 int fourk_pager_bootstrap () ;
 int shared_region_pager_bootstrap () ;
 int swapfile_pager_bootstrap () ;
 int vnode_pager_zone ;
 int zinit (int,int,int ,char*) ;
 int zone_change (int ,int ,int ) ;

void
vnode_pager_bootstrap(void)
{
 vm_size_t size;

 size = (vm_size_t) sizeof(struct vnode_pager);
 vnode_pager_zone = zinit(size, (vm_size_t) MAX_VNODE*size,
    PAGE_SIZE, "vnode pager structures");
 zone_change(vnode_pager_zone, Z_CALLERACCT, FALSE);
 zone_change(vnode_pager_zone, Z_NOENCRYPT, TRUE);





 swapfile_pager_bootstrap();



 shared_region_pager_bootstrap();

 return;
}
