
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vm_offset_t ;
typedef int upl_t ;
struct clios {int dummy; } ;
typedef int off_t ;
typedef int buf_t ;


 int CL_PRESERVE ;
 int CL_READ ;
 int PAGE_MASK ;
 int cluster_io (int ,int ,int ,int ,int,int,int ,struct clios*,int (*) (int ,void*),void*) ;
 int vector_upl_set_pagelist (int ) ;

__attribute__((used)) static int
vector_cluster_io(vnode_t vp, upl_t vector_upl, vm_offset_t vector_upl_offset, off_t v_upl_uio_offset, int vector_upl_iosize,
    int io_flag, buf_t real_bp, struct clios *iostate, int (*callback)(buf_t, void *), void *callback_arg)
{
 vector_upl_set_pagelist(vector_upl);

 if(io_flag & CL_READ) {
  if(vector_upl_offset == 0 && ((vector_upl_iosize & PAGE_MASK)==0))
          io_flag &= ~CL_PRESERVE;
  else
          io_flag |= CL_PRESERVE;
 }
 return (cluster_io(vp, vector_upl, vector_upl_offset, v_upl_uio_offset, vector_upl_iosize, io_flag, real_bp, iostate, callback, callback_arg));

}
