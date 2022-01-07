
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ lwp_cntrl ;


 int __lwp_objmgr_close (int *,int *) ;
 int __lwp_objmgr_free (int *,int *) ;
 int _lwp_thr_objects ;

__attribute__((used)) static __inline__ void __lwp_cntrl_free(lwp_cntrl *thethread)
{
 __lwp_objmgr_close(&_lwp_thr_objects,&thethread->object);
 __lwp_objmgr_free(&_lwp_thr_objects,&thethread->object);
}
