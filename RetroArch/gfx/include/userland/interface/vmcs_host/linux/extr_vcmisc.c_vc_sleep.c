
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int usleep (int) ;

void vc_sleep(int ms)
{
   usleep(1000*ms);
}
