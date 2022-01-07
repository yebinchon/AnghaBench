
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int sl ;
typedef int d ;
typedef size_t UINT ;
struct TYPE_13__ {int Password; int UserName; int HubName; int Id; void* EtherIP_IPsec; void* L2TP_IPsec; void* L2TP_Raw; int L2TP_DefaultHub; int IPsec_Secret; } ;
struct TYPE_12__ {scalar_t__ ServerType; int IPsecServer; } ;
struct TYPE_11__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ SERVER ;
typedef TYPE_3__ IPSEC_SERVICES ;
typedef int FOLDER ;
typedef TYPE_3__ ETHERIP_ID ;
typedef int BUF ;


 int AddEtherIPId (int ,TYPE_3__*) ;
 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 void* CfgGetBool (int *,char*) ;
 int * CfgGetBuf (int *,char*) ;
 int * CfgGetFolder (int *,char*) ;
 int CfgGetStr (int *,char*,int ,int) ;
 char* DecryptPassword2 (int *) ;
 int Free (char*) ;
 int FreeBuf (int *) ;
 int FreeToken (TYPE_1__*) ;
 int IPsecServerSetServices (int ,TYPE_3__*) ;
 scalar_t__ SERVER_TYPE_STANDALONE ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_3__*,int) ;

void SiLoadIPsec(SERVER *s, FOLDER *f)
{
 IPSEC_SERVICES sl;
 FOLDER *list_folder;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 Zero(&sl, sizeof(sl));

 CfgGetStr(f, "IPsec_Secret", sl.IPsec_Secret, sizeof(sl.IPsec_Secret));
 CfgGetStr(f, "L2TP_DefaultHub", sl.L2TP_DefaultHub, sizeof(sl.L2TP_DefaultHub));

 if (s->ServerType == SERVER_TYPE_STANDALONE)
 {

  sl.L2TP_Raw = CfgGetBool(f, "L2TP_Raw");
  sl.L2TP_IPsec = CfgGetBool(f, "L2TP_IPsec");
  sl.EtherIP_IPsec = CfgGetBool(f, "EtherIP_IPsec");
 }

 IPsecServerSetServices(s->IPsecServer, &sl);

 list_folder = CfgGetFolder(f, "EtherIP_IDSettingsList");

 if (list_folder != ((void*)0))
 {
  TOKEN_LIST *t = CfgEnumFolderToTokenList(list_folder);
  if (t != ((void*)0))
  {
   UINT i;

   for (i = 0;i < t->NumTokens;i++)
   {
    char *name = t->Token[i];
    FOLDER *f = CfgGetFolder(list_folder, name);

    if (f != ((void*)0))
    {
     ETHERIP_ID d;
     BUF *b;

     Zero(&d, sizeof(d));

     StrCpy(d.Id, sizeof(d.Id), name);
     CfgGetStr(f, "HubName", d.HubName, sizeof(d.HubName));
     CfgGetStr(f, "UserName", d.UserName, sizeof(d.UserName));

     b = CfgGetBuf(f, "EncryptedPassword");
     if (b != ((void*)0))
     {
      char *pass = DecryptPassword2(b);

      StrCpy(d.Password, sizeof(d.Password), pass);

      Free(pass);

      AddEtherIPId(s->IPsecServer, &d);

      FreeBuf(b);
     }
    }
   }

   FreeToken(t);
  }
 }
}
