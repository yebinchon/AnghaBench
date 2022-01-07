
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vfs_attr {int f_supported; } ;
struct getvolattrlist_attrtab {scalar_t__ attr; int bits; } ;
struct TYPE_3__ {int commonattr; int volattr; } ;
typedef TYPE_1__ attribute_set_t ;


 struct getvolattrlist_attrtab* getvolattrlist_common_tab ;
 struct getvolattrlist_attrtab* getvolattrlist_vol_tab ;

__attribute__((used)) static void
getvolattrlist_fixupattrs(attribute_set_t *asp, struct vfs_attr *vsp)
{
 struct getvolattrlist_attrtab *tab;

 if (asp->commonattr) {
  tab = getvolattrlist_common_tab;
  do {
   if ((tab->attr & asp->commonattr) &&
       (tab->bits != 0) &&
       ((tab->bits & vsp->f_supported) == 0)) {
    asp->commonattr &= ~tab->attr;
   }
  } while ((++tab)->attr != 0);
 }
 if (asp->volattr) {
  tab = getvolattrlist_vol_tab;
  do {
   if ((tab->attr & asp->volattr) &&
       (tab->bits != 0) &&
       ((tab->bits & vsp->f_supported) == 0)) {
    asp->volattr &= ~tab->attr;
   }
  } while ((++tab)->attr != 0);
 }
}
