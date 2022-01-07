
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_thactive_t ;
typedef int thread_qos_t ;
struct workqueue {int wq_thactive; } ;


 int _wq_thactive_offset_for_qos (int ) ;
 int os_atomic_add_orig (int *,int ,int ) ;
 int relaxed ;

__attribute__((used)) static inline wq_thactive_t
_wq_thactive_inc(struct workqueue *wq, thread_qos_t qos)
{
 wq_thactive_t v = _wq_thactive_offset_for_qos(qos);
 return os_atomic_add_orig(&wq->wq_thactive, v, relaxed);
}
