
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wq_thactive_t ;
typedef int thread_qos_t ;


 int WQ_THACTIVE_BUCKET_WIDTH ;
 int _wq_bucket (int ) ;

__attribute__((used)) static inline wq_thactive_t
_wq_thactive_offset_for_qos(thread_qos_t qos)
{
 return (wq_thactive_t)1 << (_wq_bucket(qos) * WQ_THACTIVE_BUCKET_WIDTH);
}
