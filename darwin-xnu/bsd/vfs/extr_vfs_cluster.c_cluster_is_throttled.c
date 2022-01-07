
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct TYPE_3__ {int v_mount; } ;


 int throttle_io_will_be_throttled (int,int ) ;

__attribute__((used)) static int
cluster_is_throttled(vnode_t vp)
{
 return (throttle_io_will_be_throttled(-1, vp->v_mount));
}
