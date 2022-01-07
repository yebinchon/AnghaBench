
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mtspr (int,int) ;
 int ppcsync () ;

void LCFlushQueue()
{
 mtspr(922,0);
 mtspr(923,1);
 ppcsync();
}
