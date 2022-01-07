
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vnode_t ;
typedef int kauth_cred_t ;
typedef scalar_t__ kauth_action_t ;
struct TYPE_3__ {int ks_flags; } ;


 scalar_t__ KAUTH_FILEOP_CLOSE ;
 scalar_t__ KAUTH_FILEOP_EXEC ;
 scalar_t__ KAUTH_FILEOP_OPEN ;
 scalar_t__ KAUTH_FILEOP_WILL_RENAME ;
 int KS_F_HAS_LISTENERS ;
 int MAXPATHLEN ;
 char* get_pathbuff () ;
 int kauth_authorize_action (TYPE_1__*,int ,scalar_t__,uintptr_t,uintptr_t,uintptr_t,int ) ;
 TYPE_1__* kauth_scope_fileop ;
 int release_pathbuff (char*) ;
 scalar_t__ vn_getpath (int ,char*,int*) ;

int
kauth_authorize_fileop(kauth_cred_t credential, kauth_action_t action, uintptr_t arg0, uintptr_t arg1)
{
 char *namep = ((void*)0);
 int name_len;
 uintptr_t arg2 = 0;




 if ((kauth_scope_fileop->ks_flags & KS_F_HAS_LISTENERS) == 0) {
  return(0);
 }

 if (action == KAUTH_FILEOP_OPEN ||
     action == KAUTH_FILEOP_CLOSE ||
     action == KAUTH_FILEOP_EXEC ||
     action == KAUTH_FILEOP_WILL_RENAME) {


  namep = get_pathbuff();
  name_len = MAXPATHLEN;
  if (vn_getpath((vnode_t)arg0, namep, &name_len) != 0) {
   release_pathbuff(namep);
   return(0);
  }
  if (action == KAUTH_FILEOP_CLOSE ||
      action == KAUTH_FILEOP_WILL_RENAME) {






   arg2 = arg1;
  }
  arg1 = (uintptr_t)namep;
 }
 kauth_authorize_action(kauth_scope_fileop, credential, action, arg0, arg1, arg2, 0);

 if (namep != ((void*)0)) {
  release_pathbuff(namep);
 }

 return(0);
}
