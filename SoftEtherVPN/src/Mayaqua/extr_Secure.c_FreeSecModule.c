
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int Initialized; TYPE_1__* Api; } ;
struct TYPE_5__ {int (* C_Finalize ) (int *) ;} ;
typedef TYPE_2__ SECURE ;


 int Win32FreeSecModule (TYPE_2__*) ;
 int stub1 (int *) ;

void FreeSecModule(SECURE *sec)
{

 if (sec == ((void*)0))
 {
  return;
 }

 if (sec->Initialized)
 {

  sec->Api->C_Finalize(((void*)0));
  sec->Initialized = 0;
 }





}
