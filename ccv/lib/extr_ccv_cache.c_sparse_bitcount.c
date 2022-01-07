
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int sparse_bitcount(unsigned int n) {
 int count = 0;
 while (n) {
  count++;
  n &= (n - 1);
 }
 return count;
}
