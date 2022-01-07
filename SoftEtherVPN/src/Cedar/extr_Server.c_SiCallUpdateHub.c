
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Me; } ;
typedef int SERVER ;
typedef int PACK ;
typedef int HUB ;
typedef TYPE_1__ FARM_MEMBER ;


 int FreePack (int *) ;
 int * NewPack () ;
 int * SiCallTask (TYPE_1__*,int *,char*) ;
 int SiPackAddCreateHub (int *,int *) ;

void SiCallUpdateHub(SERVER *s, FARM_MEMBER *f, HUB *h)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 if (f->Me == 0)
 {
  p = NewPack();

  SiPackAddCreateHub(p, h);

  p = SiCallTask(f, p, "updatehub");
  FreePack(p);
 }
}
