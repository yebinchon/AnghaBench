
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRAFFIC ;


 int * ZeroMalloc (int) ;

TRAFFIC *NewTraffic()
{
 TRAFFIC *t;

 t = ZeroMalloc(sizeof(TRAFFIC));
 return t;
}
