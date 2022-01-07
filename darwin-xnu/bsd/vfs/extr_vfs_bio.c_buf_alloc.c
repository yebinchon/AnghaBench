
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int buf_t ;


 int alloc_io_buf (int ,int ) ;
 int is_vm_privileged () ;

buf_t
buf_alloc(vnode_t vp)
{
        return(alloc_io_buf(vp, is_vm_privileged()));
}
