
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct pseminfo {int dummy; } ;
struct label {int dummy; } ;
typedef int kauth_cred_t ;


 int MAC_PERFORM (int ,int ,struct pseminfo*,struct label*,int ,struct label*) ;
 int vnode_label_associate_posixsem ;

void
mac_posixsem_vnode_label_associate(kauth_cred_t cred,
 struct pseminfo *psem, struct label *plabel,
 vnode_t vp, struct label *vlabel)
{
 MAC_PERFORM(vnode_label_associate_posixsem, cred,
      psem, plabel, vp, vlabel);
}
