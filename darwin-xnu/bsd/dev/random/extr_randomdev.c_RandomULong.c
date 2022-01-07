
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int buf ;


 int read_random (int *,int) ;

u_int32_t
RandomULong(void)
{
 u_int32_t buf;
 read_random(&buf, sizeof (buf));
 return (buf);
}
