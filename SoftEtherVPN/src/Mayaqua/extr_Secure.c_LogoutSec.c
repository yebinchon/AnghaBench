
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int LoginFlag; int SessionId; TYPE_1__* Api; } ;
struct TYPE_5__ {int (* C_Logout ) (int ) ;} ;
typedef TYPE_2__ SECURE ;


 int EraseEnumSecObjectCache (TYPE_2__*) ;
 int stub1 (int ) ;

void LogoutSec(SECURE *sec)
{

 if (sec == ((void*)0))
 {
  return;
 }
 if (sec->LoginFlag == 0)
 {
  return;
 }


 sec->Api->C_Logout(sec->SessionId);


 EraseEnumSecObjectCache(sec);

 sec->LoginFlag = 0;
}
