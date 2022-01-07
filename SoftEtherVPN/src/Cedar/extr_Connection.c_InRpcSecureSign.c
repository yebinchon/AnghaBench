
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* BitmapId; void* UseSecureDeviceId; int Signature; int Random; int ClientCert; int SecurePrivateKeyName; int SecurePublicCertName; } ;
typedef TYPE_1__ SECURE_SIGN ;
typedef int PACK ;


 int PackGetData2 (int *,char*,int ,int) ;
 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int PackGetX (int *,char*) ;
 int Zero (TYPE_1__*,int) ;

void InRpcSecureSign(SECURE_SIGN *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(SECURE_SIGN));
 PackGetStr(p, "SecurePublicCertName", t->SecurePublicCertName, sizeof(t->SecurePublicCertName));
 PackGetStr(p, "SecurePrivateKeyName", t->SecurePrivateKeyName, sizeof(t->SecurePrivateKeyName));
 t->ClientCert = PackGetX(p, "ClientCert");
 PackGetData2(p, "Random", t->Random, sizeof(t->Random));
 PackGetData2(p, "Signature", t->Signature, sizeof(t->Signature));
 t->UseSecureDeviceId = PackGetInt(p, "UseSecureDeviceId");
 t->BitmapId = PackGetInt(p, "BitmapId");
}
