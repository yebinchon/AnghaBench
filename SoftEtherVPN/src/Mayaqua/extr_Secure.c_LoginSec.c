
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int SessionCreated; int LoginFlag; int Error; int SessionId; TYPE_1__* Api; } ;
struct TYPE_5__ {scalar_t__ (* C_Login ) (int ,int ,char*,int ) ;} ;
typedef TYPE_2__ SECURE ;


 scalar_t__ CKR_OK ;
 int CKU_USER ;
 int EraseEnumSecObjectCache (TYPE_2__*) ;
 int SEC_ERROR_ALREADY_LOGIN ;
 int SEC_ERROR_BAD_PIN_CODE ;
 int SEC_ERROR_NO_PIN_STR ;
 int SEC_ERROR_NO_SESSION ;
 int StrLen (char*) ;
 scalar_t__ stub1 (int ,int ,char*,int ) ;

bool LoginSec(SECURE *sec, char *pin)
{

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (sec->SessionCreated == 0)
 {
  sec->Error = SEC_ERROR_NO_SESSION;
  return 0;

 }
 if (sec->LoginFlag)
 {
  sec->Error = SEC_ERROR_ALREADY_LOGIN;
  return 0;
 }
 if (pin == ((void*)0))
 {
  sec->Error = SEC_ERROR_NO_PIN_STR;
  return 0;
 }


 if (sec->Api->C_Login(sec->SessionId, CKU_USER, pin, StrLen(pin)) != CKR_OK)
 {

  sec->Error = SEC_ERROR_BAD_PIN_CODE;
  return 0;
 }


 EraseEnumSecObjectCache(sec);

 sec->LoginFlag = 1;

 return 1;
}
