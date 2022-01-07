
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_lock; } ;


 int lck_spin_lock (int *) ;

__attribute__((used)) static inline void
workq_lock_spin(struct workqueue *wq)
{
 lck_spin_lock(&wq->wq_lock);
}
