
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;



__attribute__((used)) static void
add1(unsigned char *a, unsigned char *b, size_t len)
{
 ssize_t i;
 int carry = 0;

 for(i = len - 1; i >= 0; i--){
  int x = a[i] + b[i] + carry;
  carry = x > 0xff;
  a[i] = x & 0xff;
 }
 for(i = len - 1; carry && i >= 0; i--){
  int x = a[i] + carry;
  carry = x > 0xff;
  a[i] = x & 0xff;
 }
}
