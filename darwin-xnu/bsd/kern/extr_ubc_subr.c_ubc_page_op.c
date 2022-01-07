
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
typedef int ppnum_t ;
typedef scalar_t__ off_t ;
typedef int memory_object_offset_t ;
typedef scalar_t__ memory_object_control_t ;
typedef int kern_return_t ;


 int KERN_INVALID_ARGUMENT ;
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ;
 int UBC_FLAGS_NONE ;
 int memory_object_page_op (scalar_t__,int ,int,int *,int*) ;
 scalar_t__ ubc_getobject (struct vnode*,int ) ;

kern_return_t
ubc_page_op(
 struct vnode *vp,
 off_t f_offset,
 int ops,
 ppnum_t *phys_entryp,
 int *flagsp)
{
 memory_object_control_t control;

 control = ubc_getobject(vp, UBC_FLAGS_NONE);
 if (control == MEMORY_OBJECT_CONTROL_NULL)
  return KERN_INVALID_ARGUMENT;

 return (memory_object_page_op(control,
          (memory_object_offset_t)f_offset,
          ops,
          phys_entryp,
          flagsp));
}
