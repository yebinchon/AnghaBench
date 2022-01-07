
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int gcd(unsigned int m, unsigned int n) {
 unsigned int t;
 if (m < n) {
  t = m;
  m = n;
  n = t;
 }

 for (;;) {
  if (n == 0)
   return m;
  t = n;
  n = m % n;
  m = t;
 }
}
