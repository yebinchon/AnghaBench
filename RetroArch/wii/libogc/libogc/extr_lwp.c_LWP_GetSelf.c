
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ lwp_t ;
struct TYPE_3__ {int id; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 int LWP_OBJMASKID (int ) ;
 int LWP_OBJMASKTYPE (int ) ;
 int LWP_OBJTYPE_THREAD ;
 int __lwp_thread_dispatchdisable () ;
 int __lwp_thread_dispatchunnest () ;
 TYPE_2__* _thr_executing ;

lwp_t LWP_GetSelf()
{
 lwp_t ret;

 __lwp_thread_dispatchdisable();
 ret = (lwp_t)(LWP_OBJMASKTYPE(LWP_OBJTYPE_THREAD)|LWP_OBJMASKID(_thr_executing->object.id));
 __lwp_thread_dispatchunnest();

 return ret;
}
