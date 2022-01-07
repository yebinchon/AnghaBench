
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_thactive_t ;
typedef int thread_qos_t ;
struct workqueue {int wq_thactive; } ;


 int WQ_THACTIVE_BEST_CONSTRAINED_REQ_QOS (int ) ;

__attribute__((used)) static inline thread_qos_t
_wq_thactive_best_constrained_req_qos(struct workqueue *wq)
{


 wq_thactive_t v = *(wq_thactive_t *)&wq->wq_thactive;
 return WQ_THACTIVE_BEST_CONSTRAINED_REQ_QOS(v);
}
