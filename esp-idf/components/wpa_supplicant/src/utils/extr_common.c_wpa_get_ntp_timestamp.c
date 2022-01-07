
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct os_time {int sec; int usec; } ;
typedef scalar_t__ be32 ;


 scalar_t__ host_to_be32 (int) ;
 int os_get_time (struct os_time*) ;
 int os_memcpy (int *,int *,int) ;

void wpa_get_ntp_timestamp(u8 *buf)
{
 struct os_time now;
 u32 sec, usec;
 be32 tmp;


 os_get_time(&now);
 sec = now.sec + 2208988800U;

 usec = now.usec;
 usec = 4295 * usec - (usec >> 5) - (usec >> 9);
 tmp = host_to_be32(sec);
 os_memcpy(buf, (u8 *) &tmp, 4);
 tmp = host_to_be32(usec);
 os_memcpy(buf + 4, (u8 *) &tmp, 4);
}
