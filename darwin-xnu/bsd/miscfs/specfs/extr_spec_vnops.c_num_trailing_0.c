
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int n ;


 int ISSET (int,int) ;

int
num_trailing_0(uint64_t n)
{




 if (n == 0)
  return sizeof(n) * 8;
 int count = 0;
 while (!ISSET(n, 1)) {
  n >>= 1;
  ++count;
 }
 return count;
}
