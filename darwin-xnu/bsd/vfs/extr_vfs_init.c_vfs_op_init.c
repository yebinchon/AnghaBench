
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int vdesc_flags; int vdesc_offset; } ;
struct TYPE_3__ {int ** opv_desc_vector_p; } ;


 int DODEBUG (int ) ;
 int VDESC_DISABLED ;
 int printf (char*,...) ;
 TYPE_2__** vfs_op_descs ;
 TYPE_1__** vfs_opv_descs ;
 int vfs_opv_numops ;

void
vfs_op_init(void)
{
 int i;

 DODEBUG(printf("Vnode_interface_init.\n"));



 for (i = 0; vfs_opv_descs[i]; i++)
  *(vfs_opv_descs[i]->opv_desc_vector_p) = ((void*)0);




 for (vfs_opv_numops = 0, i = 0; vfs_op_descs[i]; i++) {

  if (vfs_op_descs[i]->vdesc_flags & VDESC_DISABLED) {
   continue;
  }
  vfs_op_descs[i]->vdesc_offset = vfs_opv_numops;
  vfs_opv_numops++;
 }
 DODEBUG(printf ("vfs_opv_numops=%d\n", vfs_opv_numops));
}
