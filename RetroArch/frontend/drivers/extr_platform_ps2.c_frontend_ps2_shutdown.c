
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int poweroffCallback ;
 int poweroffInit () ;
 int poweroffSetCallback (int *,int *) ;

__attribute__((used)) static void frontend_ps2_shutdown(bool unused)
{
   poweroffInit();

 poweroffSetCallback(&poweroffCallback, ((void*)0));
}
