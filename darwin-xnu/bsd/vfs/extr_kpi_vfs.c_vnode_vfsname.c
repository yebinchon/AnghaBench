
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_3__* vnode_t ;
struct TYPE_7__ {TYPE_2__* v_mount; } ;
struct TYPE_6__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_5__ {int vfc_name; } ;


 int MFSNAMELEN ;
 int strlcpy (char*,int ,int ) ;

void
vnode_vfsname(vnode_t vp, char * buf)
{
        strlcpy(buf, vp->v_mount->mnt_vtable->vfc_name, MFSNAMELEN);
}
