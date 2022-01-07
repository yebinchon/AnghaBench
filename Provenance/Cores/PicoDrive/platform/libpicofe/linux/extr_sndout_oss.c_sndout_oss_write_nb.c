
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAG_COUNT ;
 unsigned int plat_get_ticks_ms () ;
 int printf (char*,unsigned int) ;
 int sndout_oss_write (void const*,int) ;

int sndout_oss_write_nb(const void *buff, int len)
{
 static int lag_counter, skip_counter;
 unsigned int t;
 int ret;

 if (lag_counter > 2) {

  lag_counter = 0;
  skip_counter = FRAG_COUNT;
 }

 if (skip_counter > 0) {
  skip_counter--;
  return len;
 }

 t = plat_get_ticks_ms();
 ret = sndout_oss_write(buff, len);
 t = plat_get_ticks_ms() - t;
 if (t > 1) {

  lag_counter++;
  if (lag_counter > 2)
   printf("audio lag %u\n", t);
 }
 else
  lag_counter = 0;

 return ret;
}
