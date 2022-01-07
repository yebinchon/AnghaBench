
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* buf_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_5__ {int b_vp; int b_flags; struct TYPE_5__* b_trans_next; } ;


 int B_TDONE ;
 int CL_ASYNC ;
 int CL_KEEPCACHED ;
 int CL_PAGEOUT ;
 int ENXIO ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int buf_biowait (TYPE_1__*) ;
 int cluster_iodone (TYPE_1__*,void*) ;
 scalar_t__ vnode_isswap (int ) ;

__attribute__((used)) static void
cluster_complete_transaction(buf_t *cbp_head, void *callback_arg, int *retval, int flags, int needwait)
{
        buf_t cbp;
 int error;
 boolean_t isswapout = FALSE;






        if (needwait) {
         for (cbp = *cbp_head; cbp; cbp = cbp->b_trans_next)
          buf_biowait(cbp);
 }





 for (cbp = *cbp_head; cbp; cbp = cbp->b_trans_next)
  cbp->b_flags |= B_TDONE;
 cbp = *cbp_head;

 if ((flags & (CL_ASYNC | CL_PAGEOUT)) == CL_PAGEOUT && vnode_isswap(cbp->b_vp))
  isswapout = TRUE;

 error = cluster_iodone(cbp, callback_arg);

 if ( !(flags & CL_ASYNC) && error && *retval == 0) {
  if (((flags & (CL_PAGEOUT | CL_KEEPCACHED)) != CL_PAGEOUT) || (error != ENXIO))
   *retval = error;
  else if (isswapout == TRUE)
   *retval = error;
 }
 *cbp_head = (buf_t)((void*)0);
}
