
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KAUTH_SCOPE_VNODE ;
 int kauth_register_scope (int ,int ,int *) ;
 int vnode_authorize_callback ;
 int vnode_scope ;

void
vnode_authorize_init(void)
{
 vnode_scope = kauth_register_scope(KAUTH_SCOPE_VNODE, vnode_authorize_callback, ((void*)0));
}
