
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
struct device_pager {int dummy; } ;


 int FALSE ;
 scalar_t__ MAX_DNODE ;
 int PAGE_SIZE ;
 int Z_CALLERACCT ;
 int device_pager_lck_attr ;
 int device_pager_lck_grp ;
 int device_pager_lck_grp_attr ;
 int device_pager_zone ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int zinit (int,int,int ,char*) ;
 int zone_change (int ,int ,int ) ;

void
device_pager_bootstrap(void)
{
 vm_size_t size;

 size = (vm_size_t) sizeof(struct device_pager);
 device_pager_zone = zinit(size, (vm_size_t) MAX_DNODE*size,
    PAGE_SIZE, "device node pager structures");
 zone_change(device_pager_zone, Z_CALLERACCT, FALSE);

 lck_grp_attr_setdefault(&device_pager_lck_grp_attr);
 lck_grp_init(&device_pager_lck_grp, "device_pager", &device_pager_lck_grp_attr);
 lck_attr_setdefault(&device_pager_lck_attr);

 return;
}
