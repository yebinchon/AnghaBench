
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_thactive_t ;
struct workqueue {int wq_thactive; } ;


 int os_atomic_load (int *,int ) ;
 int relaxed ;

__attribute__((used)) static inline wq_thactive_t
_wq_thactive(struct workqueue *wq)
{
 return os_atomic_load(&wq->wq_thactive, relaxed);
}
