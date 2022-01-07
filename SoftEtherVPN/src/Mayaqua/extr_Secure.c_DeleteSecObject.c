
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int SessionCreated; int LoginFlag; int Error; int SessionId; TYPE_1__* Api; } ;
struct TYPE_8__ {int Type; int Name; int Object; scalar_t__ Private; } ;
struct TYPE_7__ {scalar_t__ (* C_DestroyObject ) (int ,int ) ;} ;
typedef TYPE_2__ SEC_OBJ ;
typedef TYPE_3__ SECURE ;


 scalar_t__ CKR_OK ;
 int DeleteSecObjFromEnumCache (TYPE_3__*,int ,int ) ;
 int SEC_ERROR_BAD_PARAMETER ;
 int SEC_ERROR_HARDWARE_ERROR ;
 int SEC_ERROR_NOT_LOGIN ;
 int SEC_ERROR_NO_SESSION ;
 scalar_t__ stub1 (int ,int ) ;

bool DeleteSecObject(SECURE *sec, SEC_OBJ *obj)
{

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (obj == ((void*)0))
 {
  sec->Error = SEC_ERROR_BAD_PARAMETER;
  return 0;
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return 0;
 }
 if (sec->LoginFlag == 0 && obj->Private)
 {
  sec->Error = SEC_ERROR_NOT_LOGIN;
  return 0;
 }


 if (sec->Api->C_DestroyObject(sec->SessionId, obj->Object) != CKR_OK)
 {
  sec->Error = SEC_ERROR_HARDWARE_ERROR;
  return 0;
 }


 DeleteSecObjFromEnumCache(sec, obj->Name, obj->Type);

 return 1;
}
