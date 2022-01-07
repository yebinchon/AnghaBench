
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sginap (int) ;
 int sleep (int ) ;
 int usleep (int) ;

void I_WaitVBL(int count)
{






    usleep (count * (1000000/70) );


}
