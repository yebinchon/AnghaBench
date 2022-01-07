
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_lock; } ;


 int lck_spin_unlock (int *) ;

__attribute__((used)) static inline void
workq_unlock(struct workqueue *wq)
{
 lck_spin_unlock(&wq->wq_lock);
}
