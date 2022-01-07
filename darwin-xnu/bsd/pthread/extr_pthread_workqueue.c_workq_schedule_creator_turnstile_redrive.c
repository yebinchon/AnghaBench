
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int dummy; } ;


 int WORKQ_THREADREQ_CREATOR_SYNC_UPDATE ;
 int workq_lock_spin (struct workqueue*) ;
 int workq_schedule_creator (int *,struct workqueue*,int ) ;
 int workq_unlock (struct workqueue*) ;

void
workq_schedule_creator_turnstile_redrive(struct workqueue *wq, bool locked)
{
 if (!locked) workq_lock_spin(wq);
 workq_schedule_creator(((void*)0), wq, WORKQ_THREADREQ_CREATOR_SYNC_UPDATE);
 if (!locked) workq_unlock(wq);
}
