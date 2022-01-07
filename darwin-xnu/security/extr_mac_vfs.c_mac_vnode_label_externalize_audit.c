
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int v_label; } ;
struct mac {int m_buflen; int m_string; } ;


 int MAC_EXTERNALIZE_AUDIT (int ,int ,int ,int ) ;
 int vnode ;

int
mac_vnode_label_externalize_audit(struct vnode *vp, struct mac *mac)
{
 int error;


 error = MAC_EXTERNALIZE_AUDIT(vnode, vp->v_label,
     mac->m_string, mac->m_buflen);

 return (error);
}
