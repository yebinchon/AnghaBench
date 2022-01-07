
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SWORD ;


 int num_pokeys ;

__attribute__((used)) static void mix(SWORD *dst, SWORD *src, int sndn, int volume)
{
 SWORD s1, s2;
 int val;

 while (sndn--) {
  s1 = *src;
  s1 = s1*volume/128;
  s2 = *dst;
  src++;
  val = s1 + s2;
  if (val > 32767) val = 32767;
  if (val < -32768) val = -32768;
  *dst++ = val;
  if (num_pokeys == 2) {
   dst++;
  }
 }
}
