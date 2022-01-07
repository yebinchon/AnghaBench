
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int off_t ;


 int CL_PASSIVE ;
 int advisory_read_ext (int ,int ,int ,int,int *,int *,int ) ;

int
advisory_read(vnode_t vp, off_t filesize, off_t f_offset, int resid)
{
        return advisory_read_ext(vp, filesize, f_offset, resid, ((void*)0), ((void*)0), CL_PASSIVE);
}
