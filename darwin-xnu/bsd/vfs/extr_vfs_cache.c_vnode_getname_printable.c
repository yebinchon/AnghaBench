
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int dev_name ;
struct TYPE_4__ {int v_type; int v_rdev; } ;


 int NAME_CACHE_LOCK_SHARED () ;
 int NAME_CACHE_UNLOCK () ;


 int major (int ) ;
 int minor (int ) ;
 int snprintf (char*,int,char*,char,int,int) ;
 int strlen (char*) ;
 char const* unknown_vnodename ;
 char* vfs_addname (char*,int ,int ,int ) ;
 char* vnode_getname (TYPE_1__*) ;

const char *
vnode_getname_printable(vnode_t vp)
{
 const char *name = vnode_getname(vp);
 if (name != ((void*)0))
  return name;

 switch (vp->v_type) {
  case 128:
  case 129:
   {




   char dev_name[64];
   (void) snprintf(dev_name, sizeof(dev_name),
     "%c(%u, %u)", 128 == vp->v_type ? 'c':'b',
     major(vp->v_rdev), minor(vp->v_rdev));






   NAME_CACHE_LOCK_SHARED();
   name = vfs_addname(dev_name, strlen(dev_name), 0, 0);
   NAME_CACHE_UNLOCK();
   return name;
   }
  default:
   return unknown_vnodename;
 }
}
