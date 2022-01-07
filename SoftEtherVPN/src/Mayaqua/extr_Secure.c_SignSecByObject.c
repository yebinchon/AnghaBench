
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int hash ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_11__ {int member_2; int * member_1; int member_0; } ;
struct TYPE_10__ {int SessionCreated; int LoginFlag; void* Error; int SessionId; TYPE_1__* Api; } ;
struct TYPE_9__ {scalar_t__ Type; int Object; scalar_t__ Private; } ;
struct TYPE_8__ {scalar_t__ (* C_SignInit ) (int ,TYPE_4__*,int ) ;scalar_t__ (* C_Sign ) (int ,int *,int,void*,scalar_t__*) ;} ;
typedef TYPE_2__ SEC_OBJ ;
typedef TYPE_3__ SECURE ;
typedef TYPE_4__ CK_MECHANISM ;


 int CKM_RSA_PKCS ;
 scalar_t__ CKR_OK ;
 int Debug (char*,scalar_t__,...) ;
 int HashForSign (int *,int,void*,scalar_t__) ;
 void* SEC_ERROR_BAD_PARAMETER ;
 void* SEC_ERROR_HARDWARE_ERROR ;
 void* SEC_ERROR_NOT_LOGIN ;
 void* SEC_ERROR_NO_SESSION ;
 scalar_t__ SEC_K ;
 int SIGN_HASH_SIZE ;
 scalar_t__ stub1 (int ,TYPE_4__*,int ) ;
 scalar_t__ stub2 (int ,int *,int,void*,scalar_t__*) ;
 scalar_t__ stub3 (int ,int *,int,void*,scalar_t__*) ;

bool SignSecByObject(SECURE *sec, SEC_OBJ *obj, void *dst, void *src, UINT size)
{
 CK_MECHANISM mechanism = {CKM_RSA_PKCS, ((void*)0), 0};
 UINT ret;
 UCHAR hash[SIGN_HASH_SIZE];

 if (sec == ((void*)0))
 {
  return 0;
 }
 if (obj == ((void*)0) || dst == ((void*)0) || src == ((void*)0))
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
 if (obj->Type != SEC_K)
 {
  sec->Error = SEC_ERROR_BAD_PARAMETER;
  return 0;
 }


 HashForSign(hash, sizeof(hash), src, size);


 ret = sec->Api->C_SignInit(sec->SessionId, &mechanism, obj->Object);
 if (ret != CKR_OK)
 {

  sec->Error = SEC_ERROR_HARDWARE_ERROR;
  Debug("C_SignInit Error: 0x%x\n", ret);
  return 0;
 }


 size = 128;

 ret = sec->Api->C_Sign(sec->SessionId, hash, sizeof(hash), dst, &size);
 if (ret != CKR_OK && 128 < size && size <= 4096/8)
 {

  ret = sec->Api->C_Sign(sec->SessionId, hash, sizeof(hash), dst, &size);
 }
 if (ret != CKR_OK || size == 0 || size > 4096/8)
 {

  sec->Error = SEC_ERROR_HARDWARE_ERROR;
  Debug("C_Sign Error: 0x%x  size:%d\n", ret, size);
  return 0;
 }

 return 1;
}
