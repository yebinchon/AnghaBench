
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {scalar_t__ wq_turnstile_updater; } ;


 scalar_t__ current_thread () ;

bool
workq_is_current_thread_updating_turnstile(struct workqueue *wq)
{
 return wq->wq_turnstile_updater == current_thread();
}
