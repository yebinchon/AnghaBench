
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vnode_t ;
typedef int vfs_context_t ;
typedef int vfa ;
struct TYPE_2__ {int* capabilities; int* valid; } ;
struct vfs_attr {TYPE_1__ f_capabilities; } ;
typedef int int32_t ;


 int AD_XATTR_SIZE_BITS ;
 int VFSATTR_INIT (struct vfs_attr*) ;
 int VFSATTR_IS_SUPPORTED (struct vfs_attr*,int ) ;
 int VFSATTR_WANTED (struct vfs_attr*,int ) ;
 int VNOP_PATHCONF (int ,int,int*,int ) ;
 size_t VOL_CAPABILITIES_INTERFACES ;
 int VOL_CAP_INT_EXTENDED_ATTR ;
 int f_capabilities ;
 int memset (struct vfs_attr*,int ,int) ;
 int vfs_authopaque (int ) ;
 int vfs_extendedsecurity (int ) ;
 int vfs_getattr (int ,struct vfs_attr*,int ) ;
 int vnode_mount (int ) ;

int
vn_pathconf(vnode_t vp, int name, int32_t *retval, vfs_context_t ctx)
{
 int error = 0;
 struct vfs_attr vfa;

 switch(name) {
 case 136:
  *retval = vfs_extendedsecurity(vnode_mount(vp)) ? 1 : 0;
  break;
 case 137:
  *retval = vfs_authopaque(vnode_mount(vp));
  break;
 case 140:
  *retval = 1;
  break;
 case 139:
  *retval = 1;
  break;
 case 138:
  *retval = 1;
  break;
 case 135:
  *retval = 0;
  break;
 case 134:
  *retval = 4096;
  break;
 case 132:
  *retval = 4096;
  break;
 case 133:
  *retval = 65536;
  break;
 case 131:
  *retval = 4096;
  break;
 case 130:
  *retval = 255;
  break;
 case 129:
  *retval = 0;
  break;
 case 128:
  memset(&vfa, 0, sizeof(vfa));
  VFSATTR_INIT(&vfa);
  VFSATTR_WANTED(&vfa, f_capabilities);
  if (vfs_getattr(vnode_mount(vp), &vfa, ctx) == 0 &&
      (VFSATTR_IS_SUPPORTED(&vfa, f_capabilities)) &&
      (vfa.f_capabilities.capabilities[VOL_CAPABILITIES_INTERFACES] & VOL_CAP_INT_EXTENDED_ATTR) &&
      (vfa.f_capabilities.valid[VOL_CAPABILITIES_INTERFACES] & VOL_CAP_INT_EXTENDED_ATTR)) {

   error = VNOP_PATHCONF(vp, name, retval, ctx);
  } else {



   *retval = AD_XATTR_SIZE_BITS;
  }
  break;
 default:
  error = VNOP_PATHCONF(vp, name, retval, ctx);
  break;
 }

 return (error);
}
