
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int Initialized; TYPE_1__* Api; } ;
struct TYPE_6__ {scalar_t__ (* C_Initialize ) (int *) ;} ;
typedef TYPE_2__ SECURE ;


 scalar_t__ CKR_OK ;
 int FreeSecModule (TYPE_2__*) ;
 int Win32LoadSecModule (TYPE_2__*) ;
 scalar_t__ stub1 (int *) ;

bool LoadSecModule(SECURE *sec)
{
 bool ret = 0;

 if (sec == ((void*)0))
 {
  return 0;
 }






 if (sec->Api->C_Initialize(((void*)0)) != CKR_OK)
 {

  FreeSecModule(sec);
  return 0;
 }

 sec->Initialized = 1;

 return ret;
}
