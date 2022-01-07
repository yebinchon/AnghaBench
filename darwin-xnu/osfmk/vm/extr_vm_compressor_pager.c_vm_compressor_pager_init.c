
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct compressor_pager {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int Z_CALLERACCT ;
 int Z_NOENCRYPT ;
 int compressor_pager_lck_attr ;
 int compressor_pager_lck_grp ;
 int compressor_pager_lck_grp_attr ;
 int compressor_pager_zone ;
 int lck_attr_setdefault (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_grp_init (int *,char*,int *) ;
 int vm_compressor_init () ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;

void
vm_compressor_pager_init(void)
{
 lck_grp_attr_setdefault(&compressor_pager_lck_grp_attr);
 lck_grp_init(&compressor_pager_lck_grp, "compressor_pager", &compressor_pager_lck_grp_attr);
 lck_attr_setdefault(&compressor_pager_lck_attr);

 compressor_pager_zone = zinit(sizeof (struct compressor_pager),
          10000 * sizeof (struct compressor_pager),
          8192, "compressor_pager");
 zone_change(compressor_pager_zone, Z_CALLERACCT, FALSE);
 zone_change(compressor_pager_zone, Z_NOENCRYPT, TRUE);

 vm_compressor_init();
}
