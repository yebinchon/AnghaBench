
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int SessionCreated; scalar_t__ SessionSlotNumber; scalar_t__ SessionId; TYPE_1__* Api; } ;
struct TYPE_6__ {int (* C_CloseSession ) (scalar_t__) ;} ;
typedef TYPE_2__ SECURE ;


 int EraseEnumSecObjectCache (TYPE_2__*) ;
 int FreeSecInfo (TYPE_2__*) ;
 int stub1 (scalar_t__) ;

void CloseSecSession(SECURE *sec)
{

 if (sec == ((void*)0))
 {
  return;
 }
 if (sec->SessionCreated == 0)
 {
  return;
 }


 sec->Api->C_CloseSession(sec->SessionId);

 sec->SessionCreated = 0;
 sec->SessionId = 0;
 sec->SessionSlotNumber = 0;

 FreeSecInfo(sec);


 EraseEnumSecObjectCache(sec);
}
