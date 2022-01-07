
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int DeviceList; } ;
typedef TYPE_1__ EL ;


 int ElCompareDevice ;
 int ElLoadConfig (TYPE_1__*) ;
 int ElSaveConfig (TYPE_1__*) ;
 int NewList (int ) ;

void ElInitConfig(EL *e)
{

 if (e == ((void*)0))
 {
  return;
 }


 e->DeviceList = NewList(ElCompareDevice);


 ElLoadConfig(e);


 ElSaveConfig(e);
}
