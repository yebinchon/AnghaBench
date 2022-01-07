
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;


 int IO_NOCACHE ;
 scalar_t__ ISSET (int,int ) ;
 scalar_t__ flush_cache_on_write ;
 scalar_t__ vnode_isnocache (int ) ;

int vnode_should_flush_after_write(vnode_t vp, int ioflag)
{
 return (flush_cache_on_write
   && (ISSET(ioflag, IO_NOCACHE) || vnode_isnocache(vp)));
}
