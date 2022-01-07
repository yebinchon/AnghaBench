
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int NumLogin; int AuthType; int lock; int * AuthData; int Traffic; int * Policy; int LastLoginTime; int ExpireTime; int UpdatedTime; int CreatedTime; int GroupName; int * Group; int * Note; int * RealName; } ;
typedef TYPE_2__ USER ;
struct TYPE_15__ {int * NtUsername; } ;
struct TYPE_14__ {int NtLmSecureHash; int HashedKey; } ;
struct TYPE_13__ {int * RadiusUsername; } ;
struct TYPE_12__ {int * CommonName; TYPE_1__* Serial; } ;
struct TYPE_11__ {int UserX; } ;
struct TYPE_9__ {int size; int data; } ;
typedef int FOLDER ;
typedef int BUF ;
typedef TYPE_3__ AUTHUSERCERT ;
typedef TYPE_4__ AUTHROOTCERT ;
typedef TYPE_5__ AUTHRADIUS ;
typedef TYPE_6__ AUTHPASSWORD ;
typedef TYPE_7__ AUTHNT ;
 int CfgAddBuf (int *,char*,int *) ;
 int CfgAddByte (int *,char*,int ,int) ;
 int CfgAddInt (int *,char*,int) ;
 int CfgAddInt64 (int *,char*,int ) ;
 int CfgAddStr (int *,char*,int ) ;
 int CfgAddUniStr (int *,char*,int *) ;
 int CfgCreateFolder (int *,char*) ;
 int FreeBuf (int *) ;
 int IsZero (int ,int) ;
 int Lock (int ) ;
 int SiWritePolicyCfg (int ,int *,int) ;
 int SiWriteTraffic (int *,char*,int ) ;
 int UniIsEmptyStr (int *) ;
 int Unlock (int ) ;
 int * XToBuf (int ,int) ;

void SiWriteUserCfg(FOLDER *f, USER *u)
{
 BUF *b;
 AUTHPASSWORD *password;
 AUTHRADIUS *radius;
 AUTHNT *nt;
 AUTHUSERCERT *usercert;
 AUTHROOTCERT *rootcert;

 if (f == ((void*)0) || u == ((void*)0))
 {
  return;
 }

 Lock(u->lock);
 {
  CfgAddUniStr(f, "RealName", u->RealName);
  CfgAddUniStr(f, "Note", u->Note);
  if (u->Group != ((void*)0))
  {
   CfgAddStr(f, "GroupName", u->GroupName);
  }
  CfgAddInt64(f, "CreatedTime", u->CreatedTime);
  CfgAddInt64(f, "UpdatedTime", u->UpdatedTime);
  CfgAddInt64(f, "ExpireTime", u->ExpireTime);
  CfgAddInt64(f, "LastLoginTime", u->LastLoginTime);
  CfgAddInt(f, "NumLogin", u->NumLogin);
  if (u->Policy != ((void*)0))
  {
   SiWritePolicyCfg(CfgCreateFolder(f, "Policy"), u->Policy, 0);
  }
  SiWriteTraffic(f, "Traffic", u->Traffic);

  CfgAddInt(f, "AuthType", u->AuthType);
  if (u->AuthData != ((void*)0))
  {
   switch (u->AuthType)
   {
   case 133:
    break;

   case 131:
    password = (AUTHPASSWORD *)u->AuthData;
    CfgAddByte(f, "AuthPassword", password->HashedKey, sizeof(password->HashedKey));

    if (IsZero(password->NtLmSecureHash, sizeof(password->NtLmSecureHash)) == 0)
    {
     CfgAddByte(f, "AuthNtLmSecureHash", password->NtLmSecureHash, sizeof(password->NtLmSecureHash));
    }
    break;

   case 132:
    nt = (AUTHNT *)u->AuthData;
    CfgAddUniStr(f, "AuthNtUserName", nt->NtUsername);
    break;

   case 130:
    radius = (AUTHRADIUS *)u->AuthData;
    CfgAddUniStr(f, "AuthRadiusUsername", radius->RadiusUsername);
    break;

   case 128:
    usercert = (AUTHUSERCERT *)u->AuthData;
    b = XToBuf(usercert->UserX, 0);
    if (b != ((void*)0))
    {
     CfgAddBuf(f, "AuthUserCert", b);
     FreeBuf(b);
    }
    break;

   case 129:
    rootcert = (AUTHROOTCERT *)u->AuthData;
    if (rootcert->Serial != ((void*)0) && rootcert->Serial->size >= 1)
    {
     CfgAddByte(f, "AuthSerial", rootcert->Serial->data, rootcert->Serial->size);
    }
    if (rootcert->CommonName != ((void*)0) && UniIsEmptyStr(rootcert->CommonName) == 0)
    {
     CfgAddUniStr(f, "AuthCommonName", rootcert->CommonName);
    }
    break;
   }
  }
 }
 Unlock(u->lock);
}
