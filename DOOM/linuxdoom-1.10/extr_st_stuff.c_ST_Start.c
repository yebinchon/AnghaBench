
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ST_Stop () ;
 int ST_createWidgets () ;
 int ST_initData () ;
 int st_stopped ;

void ST_Start (void)
{

    if (!st_stopped)
 ST_Stop();

    ST_initData();
    ST_createWidgets();
    st_stopped = 0;

}
