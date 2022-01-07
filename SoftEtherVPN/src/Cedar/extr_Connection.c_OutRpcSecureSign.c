
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int BitmapId; int UseSecureDeviceId; int Signature; int Random; int ClientCert; int SecurePrivateKeyName; int SecurePublicCertName; } ;
typedef TYPE_1__ SECURE_SIGN ;
typedef int PACK ;


 int PackAddData (int *,char*,int ,int) ;
 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;
 int PackAddX (int *,char*,int ) ;

void OutRpcSecureSign(PACK *p, SECURE_SIGN *t)
{

 if (p == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "SecurePublicCertName", t->SecurePublicCertName);
 PackAddStr(p, "SecurePrivateKeyName", t->SecurePrivateKeyName);
 PackAddX(p, "ClientCert", t->ClientCert);
 PackAddData(p, "Random", t->Random, sizeof(t->Random));
 PackAddData(p, "Signature", t->Signature, sizeof(t->Signature));
 PackAddInt(p, "UseSecureDeviceId", t->UseSecureDeviceId);
 PackAddInt(p, "BitmapId", t->BitmapId);
}
