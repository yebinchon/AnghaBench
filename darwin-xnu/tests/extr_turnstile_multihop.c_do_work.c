
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static void do_work(int num)
{
 volatile int i = 3, count, c;

 for(count = 2; count <= num; ) {
  for(c = 2; c <= i; c++) {
   if(i%c == 0) {
    break;
   }
  }
  if(c == i) {
   count++;
  }
  i++;
 }
}
