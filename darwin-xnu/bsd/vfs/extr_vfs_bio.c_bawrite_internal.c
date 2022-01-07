
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef TYPE_2__* buf_t ;
struct TYPE_7__ {int b_flags; TYPE_1__* b_vp; } ;
struct TYPE_6__ {scalar_t__ v_numoutput; } ;


 int B_ASYNC ;
 int EWOULDBLOCK ;
 int SET (int ,int ) ;
 scalar_t__ VNODE_ASYNC_THROTTLE ;
 int VNOP_BWRITE (TYPE_2__*) ;
 int vnode_waitforwrites (TYPE_1__*,scalar_t__,int ,int ,char const*) ;

__attribute__((used)) static int
bawrite_internal(buf_t bp, int throttle)
{
 vnode_t vp = bp->b_vp;

 if (vp) {
         if (throttle)




          (void)vnode_waitforwrites(vp, VNODE_ASYNC_THROTTLE, 0, 0, (const char *)"buf_bawrite");
  else if (vp->v_numoutput >= VNODE_ASYNC_THROTTLE)




          return (EWOULDBLOCK);
 }
 SET(bp->b_flags, B_ASYNC);

 return (VNOP_BWRITE(bp));
}
