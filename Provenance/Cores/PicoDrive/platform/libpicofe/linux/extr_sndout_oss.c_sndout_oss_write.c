
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sounddev ;
 int write (int ,void const*,int) ;

int sndout_oss_write(const void *buff, int len)
{
 return write(sounddev, buff, len);
}
