
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_lock; } ;


 int kdp_lck_spin_is_acquired (int *) ;

__attribute__((used)) static bool
workq_lock_spin_is_acquired_kdp(struct workqueue *wq)
{
 return kdp_lck_spin_is_acquired(&wq->wq_lock);
}
