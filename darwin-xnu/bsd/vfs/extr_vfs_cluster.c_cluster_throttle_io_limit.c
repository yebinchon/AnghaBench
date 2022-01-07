
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int uint32_t ;


 int THROTTLE_MAX_IOSIZE ;
 scalar_t__ cluster_is_throttled (int ) ;

uint32_t
cluster_throttle_io_limit(vnode_t vp, uint32_t *limit)
{
 if (cluster_is_throttled(vp)) {
  *limit = THROTTLE_MAX_IOSIZE;
  return 1;
 }
 return 0;
}
