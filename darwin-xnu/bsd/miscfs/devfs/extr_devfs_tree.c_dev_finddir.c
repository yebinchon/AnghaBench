
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_6__* myname; } ;
struct TYPE_16__ {TYPE_1__ Dir; } ;
struct TYPE_17__ {scalar_t__ dn_type; TYPE_2__ dn_typeinfo; } ;
typedef TYPE_3__ devnode_t ;
typedef int devfs_event_log_t ;
struct TYPE_18__ {TYPE_3__* de_dnp; } ;
typedef TYPE_4__ devdirent_t ;
struct TYPE_20__ {TYPE_3__* de_dnp; } ;
struct TYPE_19__ {char const* de_name; } ;


 int DEVMAXPATHSIZE ;
 scalar_t__ DEV_DIR ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOTDIR ;
 int dev_add_entry (char*,TYPE_3__*,scalar_t__,int *,int *,int *,TYPE_4__**) ;
 TYPE_4__* dev_findname (TYPE_3__*,char*) ;
 TYPE_8__* dev_root ;
 int devfs_propogate (TYPE_6__*,TYPE_4__*,int ) ;
 int mac_devfs_label_associate_directory (char const*,int,TYPE_3__*,char*) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int
dev_finddir(const char * path,
     devnode_t * dirnode,
     int create,
     devnode_t * * dn_pp,
     devfs_event_log_t delp)
{
 devnode_t * dnp = ((void*)0);
 int error = 0;
 const char * scan;





 if (!dirnode)
     dirnode = dev_root->de_dnp;

 if (dirnode->dn_type != DEV_DIR)
     return ENOTDIR;

 if (strlen(path) > (DEVMAXPATHSIZE - 1))
     return ENAMETOOLONG;




 scan = path;

 while (*scan == '/')
     scan++;

 *dn_pp = ((void*)0);

 while (1) {
     char component[DEVMAXPATHSIZE];
     devdirent_t * dirent_p;
     const char * start;

     if (*scan == 0) {

  *dn_pp = dirnode;
  break;
     }
     start = scan;
     while (*scan != '/' && *scan)
  scan++;

     strlcpy(component, start, (scan - start) + 1);
     if (*scan == '/')
  scan++;

     dirent_p = dev_findname(dirnode, component);
     if (dirent_p) {
  dnp = dirent_p->de_dnp;
  if (dnp->dn_type != DEV_DIR) {
      error = ENOTDIR;
      break;
  }
     }
     else {
  if (!create) {
      error = ENOENT;
      break;
  }
  error = dev_add_entry(component, dirnode,
           DEV_DIR, ((void*)0), ((void*)0), ((void*)0), &dirent_p);
  if (error)
      break;
  dnp = dirent_p->de_dnp;






  devfs_propogate(dirnode->dn_typeinfo.Dir.myname, dirent_p, delp);
     }
     dirnode = dnp;
 }
 return (error);
}
