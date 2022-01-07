
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static inline void
tcp_cumulative_stat64(u_int64_t cur, u_int64_t *prev, u_int64_t *dest)
{

 int64_t diff = (int64_t) (cur - *prev);
 if (diff > 0)
  *dest = diff;
 else
  *dest = 0;
 *prev = cur;
 return;
}
