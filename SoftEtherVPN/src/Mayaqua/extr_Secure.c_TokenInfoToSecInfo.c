
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int buf ;
struct TYPE_7__ {int minor; int major; } ;
struct TYPE_6__ {int minor; int major; } ;
struct TYPE_9__ {TYPE_2__ firmwareVersion; TYPE_1__ hardwareVersion; int ulFreePrivateMemory; int ulTotalPrivateMemory; int ulFreePublicMemory; int ulTotalPublicMemory; int ulMaxPinLen; int ulMinPinLen; int ulMaxRwSessionCount; int ulMaxSessionCount; int serialNumber; int model; int manufacturerID; int label; } ;
struct TYPE_8__ {void* FirmwareVersion; void* HardwareVersion; int FreePrivateMemory; int TotalPrivateMemory; int FreePublicMemory; int TotalPublicMemory; int MaxPinLen; int MinPinLen; int MaxRWSession; int MaxSession; void* SerialNumber; void* Model; void* ManufacturerId; void* Label; } ;
typedef TYPE_3__ SEC_INFO ;
typedef TYPE_4__ CK_TOKEN_INFO ;


 int CalcUtf8ToUni (char*,int ) ;
 int Copy (char*,int ,int) ;
 void* CopyStr (char*) ;
 int Format (char*,int,char*,int ,int ) ;
 int MAX_SIZE ;
 int Utf8ToUni (void*,int ,char*,int ) ;
 int Zero (char*,int) ;
 void* ZeroMalloc (int) ;

SEC_INFO *TokenInfoToSecInfo(void *p_t)
{
 SEC_INFO *s;
 char buf[MAX_SIZE];
 CK_TOKEN_INFO *t = (CK_TOKEN_INFO *)p_t;

 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 s = ZeroMalloc(sizeof(SEC_INFO));


 Zero(buf, sizeof(buf));
 Copy(buf, t->label, sizeof(t->label));
 s->Label = ZeroMalloc(CalcUtf8ToUni(buf, 0));
 Utf8ToUni(s->Label, 0, buf, 0);


 Zero(buf, sizeof(buf));
 Copy(buf, t->manufacturerID, sizeof(t->manufacturerID));
 s->ManufacturerId = ZeroMalloc(CalcUtf8ToUni(buf, 0));
 Utf8ToUni(s->ManufacturerId, 0, buf, 0);


 Zero(buf, sizeof(buf));
 Copy(buf, t->model, sizeof(t->model));
 s->Model = ZeroMalloc(CalcUtf8ToUni(buf, 0));
 Utf8ToUni(s->Model, 0, buf, 0);


 Zero(buf, sizeof(buf));
 Copy(buf, t->serialNumber, sizeof(t->serialNumber));
 s->SerialNumber = ZeroMalloc(CalcUtf8ToUni(buf, 0));
 Utf8ToUni(s->SerialNumber, 0, buf, 0);


 s->MaxSession = t->ulMaxSessionCount;
 s->MaxRWSession = t->ulMaxRwSessionCount;
 s->MinPinLen = t->ulMinPinLen;
 s->MaxPinLen = t->ulMaxPinLen;
 s->TotalPublicMemory = t->ulTotalPublicMemory;
 s->FreePublicMemory = t->ulFreePublicMemory;
 s->TotalPrivateMemory = t->ulTotalPrivateMemory;
 s->FreePrivateMemory = t->ulFreePrivateMemory;


 Format(buf, sizeof(buf), "%u.%02u", t->hardwareVersion.major, t->hardwareVersion.minor);
 s->HardwareVersion = CopyStr(buf);


 Format(buf, sizeof(buf), "%u.%02u", t->firmwareVersion.major, t->firmwareVersion.minor);
 s->FirmwareVersion = CopyStr(buf);

 return s;
}
