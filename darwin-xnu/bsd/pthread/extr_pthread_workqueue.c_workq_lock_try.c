
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct workqueue {int wq_lock; } ;


 int lck_spin_try_lock (int *) ;

__attribute__((used)) static inline bool
workq_lock_try(struct workqueue *wq)
{
 return lck_spin_try_lock(&wq->wq_lock);
}
