
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct vnode_attr {int va_active; int va_supported; } ;
struct getattrlist_attrtab {scalar_t__ attr; int bits; } ;
struct TYPE_3__ {int commonattr; int dirattr; int fileattr; int forkattr; } ;
typedef TYPE_1__ attribute_set_t ;


 struct getattrlist_attrtab* getattrlist_common_extended_tab ;
 struct getattrlist_attrtab* getattrlist_common_tab ;
 struct getattrlist_attrtab* getattrlist_dir_tab ;
 struct getattrlist_attrtab* getattrlist_file_tab ;

__attribute__((used)) static void
getattrlist_fixupattrs(attribute_set_t *asp, struct vnode_attr *vap, int use_fork)
{
 struct getattrlist_attrtab *tab;

 if (asp->commonattr) {
  tab = getattrlist_common_tab;
  do {
   if ((tab->attr & asp->commonattr) &&
       (tab->bits & vap->va_active) &&
       (tab->bits & vap->va_supported) == 0) {
    asp->commonattr &= ~tab->attr;
   }
  } while ((++tab)->attr != 0);
 }
 if (asp->dirattr) {
  tab = getattrlist_dir_tab;
  do {
   if ((tab->attr & asp->dirattr) &&
       (tab->bits & vap->va_active) &&
       (vap->va_supported & tab->bits) == 0) {
    asp->dirattr &= ~tab->attr;
   }
  } while ((++tab)->attr != 0);
 }
 if (asp->fileattr) {
  tab = getattrlist_file_tab;
  do {
   if ((tab->attr & asp->fileattr) &&
       (tab->bits & vap->va_active) &&
       (vap->va_supported & tab->bits) == 0) {
    asp->fileattr &= ~tab->attr;
   }
  } while ((++tab)->attr != 0);
 }
 if (use_fork && asp->forkattr) {
  tab = getattrlist_common_extended_tab;
  do {
   if ((tab->attr & asp->forkattr) &&
       (tab->bits & vap->va_active) &&
       (vap->va_supported & tab->bits) == 0) {
    asp->forkattr &= ~tab->attr;
   }
  } while ((++tab)->attr != 0);
 }
}
