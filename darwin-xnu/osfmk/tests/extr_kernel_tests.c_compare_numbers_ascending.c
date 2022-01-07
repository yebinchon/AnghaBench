
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;



__attribute__((used)) static int
compare_numbers_ascending(const void * a, const void * b)
{
 const uint64_t x = *(const uint64_t *)a;
 const uint64_t y = *(const uint64_t *)b;
 if (x < y) {
  return -1;
 } else if (x > y) {
  return 1;
 } else {
  return 0;
 }
}
