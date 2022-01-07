
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ strcmp (char*,char const*) ;
 int vnode_isvroot (struct vnode*) ;

__attribute__((used)) static boolean_t
devfs_is_name_protected(struct vnode *dvp, const char *name)
{




    if (!vnode_isvroot(dvp))
        return FALSE;

    if ((strcmp("console", name) == 0) ||
        (strcmp("tty", name) == 0) ||
        (strcmp("null", name) == 0) ||
        (strcmp("zero", name) == 0) ||
        (strcmp("klog", name) == 0)) {

        return TRUE;
    }

    return FALSE;
}
