
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_qos_t ;
struct uu_workq_policy {int qos_override; int qos_max; int qos_req; } ;


 int MAX (int ,int ) ;

__attribute__((used)) static inline thread_qos_t
workq_pri_bucket(struct uu_workq_policy req)
{
 return MAX(MAX(req.qos_req, req.qos_max), req.qos_override);
}
