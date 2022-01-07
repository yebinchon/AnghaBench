
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint32_t ;


 int VNODE_DRAINO ;
 int VNODE_NODEAD ;
 int VNODE_WITHID ;
 int vget_internal (int ,int ,int) ;

int
vnode_getwithvid(vnode_t vp, uint32_t vid)
{
        return(vget_internal(vp, vid, ( VNODE_NODEAD | VNODE_WITHID | VNODE_DRAINO )));
}
