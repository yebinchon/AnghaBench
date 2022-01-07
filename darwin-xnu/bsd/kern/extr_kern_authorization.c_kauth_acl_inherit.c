
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int * vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {TYPE_2__* va_acl; } ;
typedef TYPE_2__* kauth_acl_t ;
struct TYPE_8__ {int acl_flags; unsigned int acl_entrycount; TYPE_1__* acl_ace; } ;
struct TYPE_7__ {int ace_flags; } ;


 int ENOMEM ;
 int KAUTH_ACE_DIRECTORY_INHERIT ;
 int KAUTH_ACE_FILE_INHERIT ;
 int KAUTH_ACE_INHERITED ;
 int KAUTH_ACE_INHERIT_CONTROL_FLAGS ;
 int KAUTH_ACE_LIMIT_INHERIT ;
 int KAUTH_ACE_ONLY_INHERIT ;
 int KAUTH_ACL_NO_INHERIT ;
 int KAUTH_DEBUG (char*,...) ;
 unsigned int KAUTH_FILESEC_NOACL ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 TYPE_2__* kauth_acl_alloc (int) ;
 int kauth_acl_free (TYPE_2__*) ;
 int va_acl ;
 int vfs_authopaque (int ) ;
 int vnode_getattr (int *,struct vnode_attr*,int ) ;
 int vnode_mount (int *) ;

int
kauth_acl_inherit(vnode_t dvp, kauth_acl_t initial, kauth_acl_t *product, int isdir, vfs_context_t ctx)
{
 int entries, error, index;
 unsigned int i;
 struct vnode_attr dva;
 kauth_acl_t inherit, result;
 inherit = ((void*)0);
 if ((initial == ((void*)0) || !(initial->acl_flags & KAUTH_ACL_NO_INHERIT)) &&
     (dvp != ((void*)0)) && !vfs_authopaque(vnode_mount(dvp))) {
  VATTR_INIT(&dva);
  VATTR_WANTED(&dva, va_acl);
  if ((error = vnode_getattr(dvp, &dva, ctx)) != 0) {
   KAUTH_DEBUG("    ERROR - could not get parent directory ACL for inheritance");
   return(error);
  }
  if (VATTR_IS_SUPPORTED(&dva, va_acl))
   inherit = dva.va_acl;
 }





 entries = 0;
 if (inherit != ((void*)0)) {
  for (i = 0; i < inherit->acl_entrycount; i++) {
   if (inherit->acl_ace[i].ace_flags & (isdir ? KAUTH_ACE_DIRECTORY_INHERIT : KAUTH_ACE_FILE_INHERIT))
    entries++;
  }
 }

 if (initial == ((void*)0)) {





 }

 if (initial != ((void*)0)) {
  if (initial->acl_entrycount != KAUTH_FILESEC_NOACL)
   entries += initial->acl_entrycount;
  else
   initial = ((void*)0);
 }







 if ((entries == 0) && (initial == ((void*)0))) {
  *product = ((void*)0);
  error = 0;
  goto out;
 }




 if ((result = kauth_acl_alloc(entries)) == ((void*)0)) {
  KAUTH_DEBUG("    ERROR - could not allocate %d-entry result buffer for inherited ACL", entries);
  error = ENOMEM;
  goto out;
 }






 index = 0;
 if (initial != ((void*)0)) {
  for (i = 0; i < initial->acl_entrycount; i++) {
   if (!(initial->acl_ace[i].ace_flags & KAUTH_ACE_INHERITED)) {
    result->acl_ace[index++] = initial->acl_ace[i];
   }
  }
  KAUTH_DEBUG("    INHERIT - applied %d of %d initial entries", index, initial->acl_entrycount);
 }
 if (inherit != ((void*)0)) {
  for (i = 0; i < inherit->acl_entrycount; i++) {







   if (inherit->acl_ace[i].ace_flags & (isdir ? KAUTH_ACE_DIRECTORY_INHERIT : KAUTH_ACE_FILE_INHERIT)) {
    result->acl_ace[index] = inherit->acl_ace[i];
    result->acl_ace[index].ace_flags |= KAUTH_ACE_INHERITED;
    result->acl_ace[index].ace_flags &= ~KAUTH_ACE_ONLY_INHERIT;







    if ((result->acl_ace[index].ace_flags & KAUTH_ACE_LIMIT_INHERIT) || !isdir) {
     result->acl_ace[index].ace_flags &=
         ~(KAUTH_ACE_INHERIT_CONTROL_FLAGS);
    }
    index++;
   }
  }
 }
 result->acl_entrycount = index;
 *product = result;
 KAUTH_DEBUG("    INHERIT - product ACL has %d entries", index);
 error = 0;
out:
 if (inherit != ((void*)0))
  kauth_acl_free(inherit);
 return(error);
}
