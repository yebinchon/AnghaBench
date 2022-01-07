
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int secure_password ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_7__ {int Random; int * FirstSock; } ;
struct TYPE_6__ {TYPE_3__* Connection; } ;
typedef int SOCK ;
typedef TYPE_1__ SESSION ;
typedef int RPC_WINVER ;
typedef int PACK ;
typedef int CLIENT_OPTION ;
typedef int CEDAR ;


 scalar_t__ ERR_DISCONNECTED ;
 int FreePack (int *) ;
 scalar_t__ GetErrorFromPack (int *) ;
 int GetWinVer (int *) ;
 int * HttpClientRecv (int *) ;
 int HttpClientSend (int *,int *) ;
 int * NewPack () ;
 TYPE_1__* NewRpcSessionEx2 (int *,int *,scalar_t__*,char*,void*) ;
 int OutRpcWinVer (int *,int *) ;
 int PackAddBool (int *,char*,int) ;
 int PackAddClientVersion (int *,TYPE_3__*) ;
 int PackAddData (int *,char*,int *,int) ;
 int PackAddStr (int *,char*,char*) ;
 int PackGetBool (int *,char*) ;
 int ReleaseSession (TYPE_1__*) ;
 int SHA1_SIZE ;
 int SecurePassword (int *,void*,int ) ;

SESSION *AdminConnectMain(CEDAR *cedar, CLIENT_OPTION *o, char *hubname, void *hashed_password, UINT *err, char *client_name, void *hWnd, bool *empty_password)
{
 UCHAR secure_password[SHA1_SIZE];
 SESSION *s;
 SOCK *sock;
 PACK *p;
 RPC_WINVER ver;

 s = NewRpcSessionEx2(cedar, o, err, client_name, hWnd);
 if (s == ((void*)0))
 {
  return ((void*)0);
 }


 sock = s->Connection->FirstSock;


 p = NewPack();

 PackAddClientVersion(p, s->Connection);

 PackAddStr(p, "method", "admin");
 PackAddBool(p, "accept_empty_password", 1);


 GetWinVer(&ver);
 OutRpcWinVer(p, &ver);


 SecurePassword(secure_password, hashed_password, s->Connection->Random);

 PackAddData(p, "secure_password", secure_password, sizeof(secure_password));


 if (hubname != ((void*)0))
 {
  PackAddStr(p, "hubname", hubname);
 }

 if (HttpClientSend(sock, p) == 0)
 {

  FreePack(p);
  ReleaseSession(s);
  *err = ERR_DISCONNECTED;
  return ((void*)0);
 }

 FreePack(p);

 p = HttpClientRecv(sock);
 if (p == ((void*)0))
 {

  ReleaseSession(s);
  *err = ERR_DISCONNECTED;
  return ((void*)0);
 }

 if (GetErrorFromPack(p) != 0)
 {

  ReleaseSession(s);
  *err = GetErrorFromPack(p);
  FreePack(p);
  return ((void*)0);
 }

 if (empty_password != ((void*)0))
 {
  *empty_password = PackGetBool(p, "empty_password");
 }

 FreePack(p);

 return s;
}
