
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_qos_t ;
struct uu_workq_policy {int qos_bucket; } ;


 int MAX (int ,int ) ;
 int workq_pri_bucket (struct uu_workq_policy) ;

__attribute__((used)) static inline thread_qos_t
workq_pri_override(struct uu_workq_policy req)
{
 return MAX(workq_pri_bucket(req), req.qos_bucket);
}
