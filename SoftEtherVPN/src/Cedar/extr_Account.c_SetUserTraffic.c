
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lock; int Traffic; } ;
typedef TYPE_1__ USER ;
typedef int TRAFFIC ;


 int Copy (int ,int *,int) ;
 int Lock (int ) ;
 int Unlock (int ) ;
 int Zero (int ,int) ;

void SetUserTraffic(USER *u, TRAFFIC *t)
{

 if (u == ((void*)0))
 {
  return;
 }

 Lock(u->lock);
 {
  if (t != ((void*)0))
  {
   Copy(u->Traffic, t, sizeof(TRAFFIC));
  }
  else
  {
   Zero(u->Traffic, sizeof(TRAFFIC));
  }
 }
 Unlock(u->lock);
}
