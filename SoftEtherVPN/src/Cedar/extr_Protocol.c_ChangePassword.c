
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_6__ {int Random; int * FirstSock; } ;
struct TYPE_5__ {TYPE_3__* Connection; } ;
typedef int SOCK ;
typedef TYPE_1__ SESSION ;
typedef int PACK ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;


 int ERR_DISCONNECTED ;
 int ERR_INTERNAL_ERROR ;
 int ERR_NO_ERROR ;
 int FreePack (int *) ;
 int GenerateNtPasswordHash (int *,char*) ;
 int GetErrorFromPack (int *) ;
 int HashPassword (int *,char*,char*) ;
 int * HttpClientRecv (int *) ;
 scalar_t__ HttpClientSend (int *,int *) ;
 int MD5_SIZE ;
 int * NewPack () ;
 TYPE_1__* NewRpcSessionEx (int *,int *,int *,int *) ;
 int PackAddClientVersion (int *,TYPE_3__*) ;
 int PackAddData (int *,char*,int *,int) ;
 int PackAddStr (int *,char*,char*) ;
 int ReleaseSession (TYPE_1__*) ;
 int SHA1_SIZE ;
 int SecurePassword (int *,int *,int ) ;

UINT ChangePassword(CEDAR *cedar, CLIENT_OPTION *o, char *hubname, char *username, char *old_pass, char *new_pass)
{
 UINT ret = ERR_NO_ERROR;
 UCHAR old_password[SHA1_SIZE];
 UCHAR secure_old_password[SHA1_SIZE];
 UCHAR new_password[SHA1_SIZE];
 UCHAR new_password_ntlm[MD5_SIZE];
 SOCK *sock;
 SESSION *s;

 if (cedar == ((void*)0) || o == ((void*)0) || hubname == ((void*)0) || username == ((void*)0) || old_pass == ((void*)0) || new_pass == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }



 s = NewRpcSessionEx(cedar, o, &ret, ((void*)0));

 if (s != ((void*)0))
 {
  PACK *p = NewPack();

  sock = s->Connection->FirstSock;

  HashPassword(old_password, username, old_pass);
  SecurePassword(secure_old_password, old_password, s->Connection->Random);
  HashPassword(new_password, username, new_pass);
  GenerateNtPasswordHash(new_password_ntlm, new_pass);

  PackAddClientVersion(p, s->Connection);

  PackAddStr(p, "method", "password");
  PackAddStr(p, "hubname", hubname);
  PackAddStr(p, "username", username);
  PackAddData(p, "secure_old_password", secure_old_password, SHA1_SIZE);
  PackAddData(p, "new_password", new_password, SHA1_SIZE);
  PackAddData(p, "new_password_ntlm", new_password_ntlm, MD5_SIZE);

  if (HttpClientSend(sock, p))
  {
   PACK *p = HttpClientRecv(sock);
   if (p == ((void*)0))
   {
    ret = ERR_DISCONNECTED;
   }
   else
   {
    ret = GetErrorFromPack(p);
   }
   FreePack(p);
  }
  else
  {
   ret = ERR_DISCONNECTED;
  }
  FreePack(p);

  ReleaseSession(s);
 }

 return ret;
}
