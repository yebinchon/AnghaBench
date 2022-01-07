
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct vnop_lookup_args {int a_context; struct componentname* a_cnp; TYPE_1__** a_vpp; TYPE_1__* a_dvp; } ;
struct componentname {int cn_nameiop; char* cn_nameptr; size_t cn_namelen; } ;
typedef TYPE_2__* mockfs_fsnode_t ;
struct TYPE_8__ {scalar_t__ type; } ;
struct TYPE_7__ {scalar_t__ v_data; } ;


 int ENOENT ;
 int LOOKUP ;
 int MOCKFS_DEV ;
 int MOCKFS_FILE ;
 scalar_t__ MOCKFS_ROOT ;
 int mockfs_fsnode_child_by_type (TYPE_2__*,int ,TYPE_2__**) ;
 int mockfs_fsnode_vnode (TYPE_2__*,TYPE_1__**) ;
 int strncmp (char*,char*,int) ;

int mockfs_lookup(struct vnop_lookup_args * ap)
{
 char held_char;
 int rvalue;
 int op;
 mockfs_fsnode_t fsnode;
 mockfs_fsnode_t target_fsnode;
 vnode_t dvp;
 vnode_t * vpp;
 vfs_context_t ctx;
 struct componentname * cnp;

 rvalue = 0;
 dvp = ap->a_dvp;
 vpp = ap->a_vpp;
 cnp = ap->a_cnp;
 ctx = ap->a_context;
 op = cnp->cn_nameiop;
 fsnode = (mockfs_fsnode_t) dvp->v_data;
 target_fsnode = ((void*)0);

 if ((op == LOOKUP) && (fsnode->type == MOCKFS_ROOT)) {





  held_char = cnp->cn_nameptr[cnp->cn_namelen];
  cnp->cn_nameptr[cnp->cn_namelen] = '\0';






  if (!strncmp(cnp->cn_nameptr, "sbin", 5))
   target_fsnode = fsnode;
  else if (!strncmp(cnp->cn_nameptr, "dev", 4))
   mockfs_fsnode_child_by_type(fsnode, MOCKFS_DEV, &target_fsnode);
  else if (!strncmp(cnp->cn_nameptr, "launchd", 8))
   mockfs_fsnode_child_by_type(fsnode, MOCKFS_FILE, &target_fsnode);
  else
   rvalue = ENOENT;

  cnp->cn_nameptr[cnp->cn_namelen] = held_char;

  if (target_fsnode)
   rvalue = mockfs_fsnode_vnode(target_fsnode, vpp);
 }
 else {




  rvalue = ENOENT;
 }

 return rvalue;
}
