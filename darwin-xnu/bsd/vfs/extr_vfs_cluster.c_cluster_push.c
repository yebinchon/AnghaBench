
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int cluster_push_ext (int ,int,int *,int *) ;

int
cluster_push(vnode_t vp, int flags)
{
        return cluster_push_ext(vp, flags, ((void*)0), ((void*)0));
}
