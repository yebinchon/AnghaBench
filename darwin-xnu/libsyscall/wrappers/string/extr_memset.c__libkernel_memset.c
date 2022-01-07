
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef scalar_t__ u_char ;


 int RETURN ;
 void* VAL ;
 scalar_t__ WIDEVAL ;
 long wmask ;
 int wsize ;

__attribute__((visibility("hidden")))
void *
_libkernel_memset(void *dst0, int c0, size_t length)
{
 size_t t;
 u_int c;
 u_char *dst;

 dst = dst0;
 if (length < 3 * wsize) {
  while (length != 0) {
   *dst++ = VAL;
   --length;
  }
  RETURN;
 }

 if ((c = (u_char)c0) != 0) {
  c = (c << 8) | c;






 }

 if ((t = (long)dst & wmask) != 0) {
  t = wsize - t;
  length -= t;
  do {
   *dst++ = VAL;
  } while (--t != 0);
 }


 t = length / wsize;
 do {
  *(u_int *)dst = WIDEVAL;
  dst += wsize;
 } while (--t != 0);


 t = length & wmask;
 if (t != 0)
  do {
   *dst++ = VAL;
  } while (--t != 0);
 RETURN;
}
