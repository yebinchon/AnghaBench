
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TIME_T ;


 scalar_t__ MAX_TIME ;
 scalar_t__ MIN_TIME ;

__attribute__((used)) static inline TIME_T saturate_add(TIME_T a, TIME_T b)
{
   TIME_T sum = a + b;
   if (a > 0 && b > 0 && sum < 0)
      sum = MAX_TIME;
   else if (a < 0 && b < 0 && sum > 0)
      sum = MIN_TIME;
   return sum;
}
