
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {int va_active; } ;
struct user64_timespec {int dummy; } ;
struct user32_timespec {int dummy; } ;
struct getattrlist_attrtab {scalar_t__ attr; scalar_t__ size; int action; int bits; } ;
typedef int ssize_t ;
typedef int kauth_action_t ;
typedef int attrgroup_t ;


 scalar_t__ ATTR_TIME_SIZE ;
 int EINVAL ;

__attribute__((used)) static int
getattrlist_parsetab(struct getattrlist_attrtab *tab, attrgroup_t attrs,
    struct vnode_attr *vap, ssize_t *sizep, kauth_action_t *actionp,
    int is_64bit, unsigned int maxiter)
{
 attrgroup_t recognised;
 recognised = 0;
 if (!tab)
  return EINVAL;

 do {

  if (tab->attr & attrs) {
   recognised |= tab->attr;
   if (vap)
    vap->va_active |= tab->bits;
   if (sizep) {
    if (tab->size == ATTR_TIME_SIZE) {
     if (is_64bit) {
      *sizep += sizeof(
          struct user64_timespec);
     } else {
      *sizep += sizeof(
          struct user32_timespec);
     }
    } else {
     *sizep += tab->size;
    }
   }
   if (actionp)
    *actionp |= tab->action;
   if (attrs == recognised)
    break;
  }
 } while (((++tab)->attr != 0) && (--maxiter > 0));


 if (attrs & ~recognised)
  return(EINVAL);
 return(0);
}
