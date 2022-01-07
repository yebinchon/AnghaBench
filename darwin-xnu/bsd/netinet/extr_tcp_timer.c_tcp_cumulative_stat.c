
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
typedef scalar_t__ int32_t ;



__attribute__((used)) static inline void
tcp_cumulative_stat(u_int32_t cur, u_int32_t *prev, u_int32_t *dest)
{

 int32_t diff = (int32_t) (cur - *prev);
 if (diff > 0)
  *dest = diff;
 else
  *dest = 0;
 *prev = cur;
 return;
}
