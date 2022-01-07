
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long long u_int64_t ;
typedef unsigned long long u_int32_t ;



__attribute__((used)) static inline u_int64_t
qfq_round_down(u_int64_t ts, u_int32_t shift)
{
 return (ts & ~((1ULL << shift) - 1));
}
