
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int AuthType; int SecurePrivateKeyName; int SecurePublicCertName; int ClientK; int ClientX; int PlainPassword; int HashedPassword; int Username; } ;
typedef TYPE_1__ CLIENT_AUTH ;







 int CloneK (int ) ;
 int CloneX (int ) ;
 int Copy (int ,int ,int ) ;
 int SHA1_SIZE ;
 int StrCpy (int ,int,int ) ;
 TYPE_1__* ZeroMallocEx (int,int) ;

CLIENT_AUTH *CopyClientAuth(CLIENT_AUTH *a)
{
 CLIENT_AUTH *ret;

 if (a == ((void*)0))
 {
  return ((void*)0);
 }

 ret = ZeroMallocEx(sizeof(CLIENT_AUTH), 1);

 ret->AuthType = a->AuthType;
 StrCpy(ret->Username, sizeof(ret->Username), a->Username);

 switch (a->AuthType)
 {
 case 132:

  break;

 case 130:

  Copy(ret->HashedPassword, a->HashedPassword, SHA1_SIZE);
  break;

 case 129:

  StrCpy(ret->PlainPassword, sizeof(ret->PlainPassword), a->PlainPassword);
  break;

 case 131:

  ret->ClientX = CloneX(a->ClientX);
  ret->ClientK = CloneK(a->ClientK);
  break;

 case 128:

  StrCpy(ret->SecurePublicCertName, sizeof(ret->SecurePublicCertName), a->SecurePublicCertName);
  StrCpy(ret->SecurePrivateKeyName, sizeof(ret->SecurePrivateKeyName), a->SecurePrivateKeyName);
  break;
 }

 return ret;
}
