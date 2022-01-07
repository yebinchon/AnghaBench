
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ Setexc (int,long) ;

int get_cookie(long cookie, long *value)
{
 long *cookiejar = (long *) Setexc(0x168, -1L);

 if (cookiejar) {
  while (*cookiejar) {
   if (*cookiejar == cookie) {
    if (value)
     *value = *++cookiejar;
    return (1);
   }
   cookiejar += 2;
  }
 }
 return (0);
}
