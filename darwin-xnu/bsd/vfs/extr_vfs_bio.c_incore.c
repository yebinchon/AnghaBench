
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct bufhashhdr {int dummy; } ;
typedef int daddr64_t ;
typedef int boolean_t ;


 struct bufhashhdr* BUFHASH (int ,int ) ;
 int FALSE ;
 int TRUE ;
 int buf_mtxp ;
 scalar_t__ incore_locked (int ,int ,struct bufhashhdr*) ;
 int lck_mtx_lock_spin (int ) ;
 int lck_mtx_unlock (int ) ;

__attribute__((used)) static boolean_t
incore(vnode_t vp, daddr64_t blkno)
{
        boolean_t retval;
 struct bufhashhdr *dp;

 dp = BUFHASH(vp, blkno);

 lck_mtx_lock_spin(buf_mtxp);

 if (incore_locked(vp, blkno, dp))
         retval = TRUE;
 else
         retval = FALSE;
 lck_mtx_unlock(buf_mtxp);

 return (retval);
}
