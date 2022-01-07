
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct timeval {int tv_sec; int tv_usec; } ;


 int getmicrotime (struct timeval*) ;
 int htonl (int) ;

u_int32_t
iptime(void)
{
 struct timeval atv;
 u_int32_t t;

 getmicrotime(&atv);
 t = (atv.tv_sec % (24*60*60)) * 1000 + atv.tv_usec / 1000;
 return (htonl(t));
}
