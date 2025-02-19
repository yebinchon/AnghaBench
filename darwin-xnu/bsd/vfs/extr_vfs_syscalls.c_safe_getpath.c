
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct vnode {char* v_name; TYPE_2__* v_mount; struct vnode* v_parent; } ;
struct TYPE_3__ {char* f_mntonname; } ;
struct TYPE_4__ {TYPE_1__ mnt_vfsstat; } ;


 int ENOSPC ;
 int MAXPATHLEN ;
 char* my_strrchr (char*,char) ;
 int printf (char*,struct vnode*,char*,int) ;
 scalar_t__ strlcpy (char*,char*,int) ;
 int strlen (char*) ;
 int vn_getpath (struct vnode*,char*,int*) ;

int
safe_getpath(struct vnode *dvp, char *leafname, char *path, int _len, int *truncated_path)
{
 int ret, len = _len;

 *truncated_path = 0;
 ret = vn_getpath(dvp, path, &len);
 if (ret == 0 && len < (MAXPATHLEN - 1)) {
  if (leafname) {
   path[len-1] = '/';
   len += strlcpy(&path[len], leafname, MAXPATHLEN-len) + 1;
   if (len > MAXPATHLEN) {
    char *ptr;


    *truncated_path = 1;
    ptr = my_strrchr(path, '/');
    if (ptr) {
     *ptr = '\0';
    }
    len = strlen(path) + 1;
   }
  }
 } else if (ret == 0) {
  *truncated_path = 1;
 } else if (ret != 0) {
  struct vnode *mydvp=dvp;

  if (ret != ENOSPC) {
   printf("safe_getpath: failed to get the path for vp %p (%s) : err %d\n",
          dvp, dvp->v_name ? dvp->v_name : "no-name", ret);
  }
  *truncated_path = 1;

  do {
   if (mydvp->v_parent != ((void*)0)) {
    mydvp = mydvp->v_parent;
   } else if (mydvp->v_mount) {
    strlcpy(path, mydvp->v_mount->mnt_vfsstat.f_mntonname, _len);
    break;
   } else {

    strlcpy(path, "/", _len);
    len = 2;
    mydvp = ((void*)0);
   }

   if (mydvp == ((void*)0)) {
    break;
   }

   len = _len;
   ret = vn_getpath(mydvp, path, &len);
  } while (ret == ENOSPC);
 }

 return len;
}
