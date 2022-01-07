
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static inline int
qfq_gt(u_int64_t a, u_int64_t b)
{
 return ((int64_t)(a - b) > 0);
}
