
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int wchar_t ;
typedef int tmp ;
typedef int realname ;
typedef int note ;
typedef int md4_password ;
typedef int hashed_password ;
typedef int groupname ;
typedef int common_name ;
typedef int X_SERIAL ;
typedef int X ;
typedef int USERGROUP ;
struct TYPE_24__ {int NumLogin; int lock; void* LastLoginTime; void* ExpireTime; void* UpdatedTime; void* CreatedTime; } ;
typedef TYPE_1__ USER ;
typedef void* UINT64 ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_26__ {int Size; int Buf; } ;
struct TYPE_25__ {char* Name; } ;
typedef int TRAFFIC ;
typedef int POLICY ;
typedef int HUB ;
typedef TYPE_2__ FOLDER ;
typedef TYPE_3__ BUF ;







 int AcAddUser (int *,TYPE_1__*) ;
 int * AcGetGroup (int *,char*) ;
 int AcLock (int *) ;
 int AcUnlock (int *) ;
 int * BufToX (TYPE_3__*,int) ;
 TYPE_3__* CfgGetBuf (TYPE_2__*,char*) ;
 int CfgGetByte (TYPE_2__*,char*,int *,int) ;
 TYPE_2__* CfgGetFolder (TYPE_2__*,char*) ;
 int CfgGetInt (TYPE_2__*,char*) ;
 void* CfgGetInt64 (TYPE_2__*,char*) ;
 int CfgGetStr (TYPE_2__*,char*,char*,int) ;
 int CfgGetUniStr (TYPE_2__*,char*,int *,int) ;
 int FreeBuf (TYPE_3__*) ;
 int FreeX (int *) ;
 int FreeXSerial (int *) ;
 int JoinUserToGroup (TYPE_1__*,int *) ;
 int Lock (int ) ;
 int MAX_SIZE ;
 int MD5_SIZE ;
 void* NewNTAuthData (int *) ;
 void* NewPasswordAuthDataRaw (int *,int *) ;
 void* NewRadiusAuthData (int *) ;
 void* NewRootCertAuthData (int *,int *) ;
 TYPE_1__* NewUser (char*,int *,int *,int,void*) ;
 void* NewUserCertAuthData (int *) ;
 int * NewXSerial (int ,int ) ;
 int ReleaseGroup (int *) ;
 int ReleaseUser (TYPE_1__*) ;
 int SHA1_SIZE ;
 int SetUserPolicy (TYPE_1__*,int *) ;
 int SetUserTraffic (TYPE_1__*,int *) ;
 int SiLoadPolicyCfg (int *,TYPE_2__*) ;
 int SiLoadTraffic (TYPE_2__*,char*,int *) ;
 scalar_t__ StrLen (char*) ;
 int Unlock (int ) ;
 int Zero (int *,int) ;

void SiLoadUserCfg(HUB *h, FOLDER *f)
{
 char *username;
 wchar_t realname[MAX_SIZE];
 wchar_t note[MAX_SIZE];
 char groupname[MAX_SIZE];
 FOLDER *pf;
 UINT64 created_time;
 UINT64 updated_time;
 UINT64 expire_time;
 UINT64 last_login_time;
 UINT num_login;
 POLICY p;
 TRAFFIC t;
 BUF *b;
 UINT authtype;
 void *authdata;
 X_SERIAL *serial = ((void*)0);
 wchar_t common_name[MAX_SIZE];
 UCHAR hashed_password[SHA1_SIZE];
 UCHAR md4_password[MD5_SIZE];
 wchar_t tmp[MAX_SIZE];
 USER *u;
 USERGROUP *g;

 if (h == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 username = f->Name;
 CfgGetUniStr(f, "RealName", realname, sizeof(realname));
 CfgGetUniStr(f, "Note", note, sizeof(note));
 CfgGetStr(f, "GroupName", groupname, sizeof(groupname));

 created_time = CfgGetInt64(f, "CreatedTime");
 updated_time = CfgGetInt64(f, "UpdatedTime");
 expire_time = CfgGetInt64(f, "ExpireTime");
 last_login_time = CfgGetInt64(f, "LastLoginTime");
 num_login = CfgGetInt(f, "NumLogin");
 pf = CfgGetFolder(f, "Policy");
 if (pf != ((void*)0))
 {
  SiLoadPolicyCfg(&p, pf);
 }
 SiLoadTraffic(f, "Traffic", &t);

 authtype = CfgGetInt(f, "AuthType");
 authdata = ((void*)0);

 switch (authtype)
 {
 case 131:
  Zero(hashed_password, sizeof(hashed_password));
  Zero(md4_password, sizeof(md4_password));
  CfgGetByte(f, "AuthPassword", hashed_password, sizeof(hashed_password));
  CfgGetByte(f, "AuthNtLmSecureHash", md4_password, sizeof(md4_password));
  authdata = NewPasswordAuthDataRaw(hashed_password, md4_password);
  break;

 case 132:
  if (CfgGetUniStr(f, "AuthNtUserName", tmp, sizeof(tmp)))
  {
   authdata = NewNTAuthData(tmp);
  }
  else
  {
   authdata = NewNTAuthData(((void*)0));
  }
  break;

 case 130:
  if (CfgGetUniStr(f, "AuthRadiusUsername", tmp, sizeof(tmp)))
  {
   authdata = NewRadiusAuthData(tmp);
  }
  else
  {
   authdata = NewRadiusAuthData(((void*)0));
  }
  break;

 case 128:
  b = CfgGetBuf(f, "AuthUserCert");
  if (b != ((void*)0))
  {
   X *x = BufToX(b, 0);
   if (x != ((void*)0))
   {
    authdata = NewUserCertAuthData(x);
    FreeX(x);
   }
   FreeBuf(b);
  }
  break;

 case 129:
  b = CfgGetBuf(f, "AuthSerial");
  if (b != ((void*)0))
  {
   serial = NewXSerial(b->Buf, b->Size);
   FreeBuf(b);
  }
  CfgGetUniStr(f, "AuthCommonName", common_name, sizeof(common_name));
  authdata = NewRootCertAuthData(serial, common_name);
  break;
 }


 AcLock(h);
 {
  if (StrLen(groupname) > 0)
  {
   g = AcGetGroup(h, groupname);
  }
  else
  {
   g = ((void*)0);
  }

  u = NewUser(username, realname, note, authtype, authdata);
  if (u != ((void*)0))
  {
   if (g != ((void*)0))
   {
    JoinUserToGroup(u, g);
   }

   SetUserTraffic(u, &t);

   if (pf != ((void*)0))
   {
    SetUserPolicy(u, &p);
   }

   Lock(u->lock);
   {
    u->CreatedTime = created_time;
    u->UpdatedTime = updated_time;
    u->ExpireTime = expire_time;
    u->LastLoginTime = last_login_time;
    u->NumLogin = num_login;
   }
   Unlock(u->lock);

   AcAddUser(h, u);

   ReleaseUser(u);
  }

  if (g != ((void*)0))
  {
   ReleaseGroup(g);
  }
 }
 AcUnlock(h);

 if (serial != ((void*)0))
 {
  FreeXSerial(serial);
 }
}
