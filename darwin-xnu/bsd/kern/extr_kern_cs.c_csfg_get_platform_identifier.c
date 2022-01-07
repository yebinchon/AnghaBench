
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
typedef int uint8_t ;
struct vnode {int dummy; } ;
struct fileglob {scalar_t__ fg_data; } ;
typedef int off_t ;


 scalar_t__ DTYPE_VNODE ;
 scalar_t__ FILEGLOB_DTYPE (struct fileglob*) ;
 int csvnode_get_platform_identifier (struct vnode*,int ) ;

uint8_t
csfg_get_platform_identifier(struct fileglob *fg, off_t offset)
{
 vnode_t vp;

 if (FILEGLOB_DTYPE(fg) != DTYPE_VNODE)
  return 0;

 vp = (struct vnode *)fg->fg_data;
 if (vp == ((void*)0))
  return 0;

 return csvnode_get_platform_identifier(vp, offset);
}
