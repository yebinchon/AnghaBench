
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_size_t ;
struct vnode {int dummy; } ;
typedef int kern_return_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ FALSE ;
 int KERN_SUCCESS ;
 int safe_getpath (struct vnode*,int *,char*,int,scalar_t__*) ;
 int strlcpy (char*,char const*,size_t) ;
 char* vnode_getname_printable (struct vnode*) ;
 int vnode_putname_printable (char const*) ;

kern_return_t
vnode_pager_get_name(
 struct vnode *vp,
 char *pathname,
 vm_size_t pathname_len,
 char *filename,
 vm_size_t filename_len,
 boolean_t *truncated_path_p)
{
 *truncated_path_p = FALSE;
 if (pathname != ((void*)0)) {

  safe_getpath(vp, ((void*)0),
        pathname, (int) pathname_len,
        truncated_path_p);
 }
 if ((pathname == ((void*)0) || *truncated_path_p) &&
     filename != ((void*)0)) {

  const char *name;

  name = vnode_getname_printable(vp);
  strlcpy(filename, name, (size_t) filename_len);
  vnode_putname_printable(name);
 }
 return KERN_SUCCESS;
}
