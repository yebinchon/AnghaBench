
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int rootvnode ;
 int vnode_get (int ) ;

vnode_t
vfs_rootvnode(void)
{
 int error;

 error = vnode_get(rootvnode);
 if (error)
  return ((vnode_t)0);
 else
  return rootvnode;
}
