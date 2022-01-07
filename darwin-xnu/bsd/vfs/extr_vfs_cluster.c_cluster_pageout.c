
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int upl_t ;
typedef int upl_offset_t ;
typedef int off_t ;


 int cluster_pageout_ext (int ,int ,int ,int ,int,int ,int,int *,int *) ;

int
cluster_pageout(vnode_t vp, upl_t upl, upl_offset_t upl_offset, off_t f_offset,
  int size, off_t filesize, int flags)
{
        return cluster_pageout_ext(vp, upl, upl_offset, f_offset, size, filesize, flags, ((void*)0), ((void*)0));

}
