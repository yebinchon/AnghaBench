
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int SessionCreated; int LoginFlag; int SessionId; TYPE_1__* Api; int Error; scalar_t__ IsReadOnly; } ;
struct TYPE_4__ {scalar_t__ (* C_SetPIN ) (int ,char*,int ,char*,int ) ;} ;
typedef TYPE_2__ SECURE ;


 scalar_t__ CKR_OK ;
 int SEC_ERROR_NOT_LOGIN ;
 int SEC_ERROR_NO_SESSION ;
 int SEC_ERROR_OPEN_SESSION ;
 int StrLen (char*) ;
 scalar_t__ stub1 (int ,char*,int ,char*,int ) ;

bool ChangePin(SECURE *sec, char *old_pin, char *new_pin)
{

 if (sec == ((void*)0) || old_pin == ((void*)0) || new_pin == ((void*)0))
 {
  return 0;
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return 0;
 }
 if (sec->LoginFlag == 0)
 {
  sec->Error = SEC_ERROR_NOT_LOGIN;
  return 0;
 }
 if (sec->IsReadOnly)
 {
  sec->Error = SEC_ERROR_OPEN_SESSION;
  return 0;
 }


 if (sec->Api->C_SetPIN(sec->SessionId, old_pin, StrLen(old_pin),
  new_pin, StrLen(new_pin)) != CKR_OK)
 {
  return 0;
 }

 return 1;
}
