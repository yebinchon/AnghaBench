
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int fifo_freespace (int ,long*) ;
 int panic (char*) ;
 scalar_t__ vnode_isfifo (int ) ;
 scalar_t__ vnode_isreg (int ) ;

__attribute__((used)) static intptr_t
vnode_writable_space_count(vnode_t vp)
{
 if (vnode_isfifo(vp)) {







  {
   return (intptr_t)0;
  }
 } else if (vnode_isreg(vp)) {
  return (intptr_t)1;
 } else {
  panic("Should never have an EVFILT_READ except for reg or fifo.");
  return 0;
 }
}
