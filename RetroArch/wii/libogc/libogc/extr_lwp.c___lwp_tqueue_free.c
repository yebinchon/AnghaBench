
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int object; } ;
typedef TYPE_1__ tqueue_st ;


 int __lwp_objmgr_close (int *,int *) ;
 int __lwp_objmgr_free (int *,int *) ;
 int _lwp_tqueue_objects ;

__attribute__((used)) static __inline__ void __lwp_tqueue_free(tqueue_st *tq)
{
 __lwp_objmgr_close(&_lwp_tqueue_objects,&tq->object);
 __lwp_objmgr_free(&_lwp_tqueue_objects,&tq->object);
}
