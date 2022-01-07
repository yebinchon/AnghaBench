
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int SOCK ;
typedef int RPC ;
typedef int PACK ;
typedef int CEDAR ;


 int * Connect (char*,scalar_t__) ;
 scalar_t__ ERR_CONNECT_FAILED ;
 scalar_t__ ERR_DISCONNECTED ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_PROTOCOL_ERROR ;
 int FreePack (int *) ;
 scalar_t__ GetErrorFromPack (int *) ;
 int * HttpClientRecv (int *) ;
 int HttpClientSend (int *,int *) ;
 int * NewPack () ;
 int PackAddData (int *,char*,int *,int) ;
 int PackGetData2 (int *,char*,int *,int) ;
 int ReleaseSock (int *) ;
 int SHA1_SIZE ;
 int SecurePassword (int *,void*,int *) ;
 int SetTimeout (int *,int) ;
 int * StartRpcClient (int *,int *) ;
 int StartSSL (int *,int *,int *) ;
 int TIMEOUT_INFINITE ;

RPC *NatAdminConnect(CEDAR *cedar, char *hostname, UINT port, void *hashed_password, UINT *err)
{
 UCHAR secure_password[SHA1_SIZE];
 UCHAR random[SHA1_SIZE];
 SOCK *sock;
 RPC *rpc;
 PACK *p;
 UINT error;

 if (cedar == ((void*)0) || hostname == ((void*)0) || port == 0 || hashed_password == ((void*)0) || err == ((void*)0))
 {
  if (err != ((void*)0))
  {
   *err = ERR_INTERNAL_ERROR;
  }
  return ((void*)0);
 }


 sock = Connect(hostname, port);
 if (sock == ((void*)0))
 {
  *err = ERR_CONNECT_FAILED;
  return ((void*)0);
 }

 if (StartSSL(sock, ((void*)0), ((void*)0)) == 0)
 {
  *err = ERR_PROTOCOL_ERROR;
  ReleaseSock(sock);
  return ((void*)0);
 }

 SetTimeout(sock, 5000);

 p = HttpClientRecv(sock);
 if (p == ((void*)0))
 {
  *err = ERR_DISCONNECTED;
  ReleaseSock(sock);
  return ((void*)0);
 }

 if (PackGetData2(p, "auth_random", random, SHA1_SIZE) == 0)
 {
  FreePack(p);
  *err = ERR_PROTOCOL_ERROR;
  ReleaseSock(sock);
  return ((void*)0);
 }

 FreePack(p);

 SecurePassword(secure_password, hashed_password, random);

 p = NewPack();
 PackAddData(p, "secure_password", secure_password, SHA1_SIZE);

 if (HttpClientSend(sock, p) == 0)
 {
  FreePack(p);
  *err = ERR_DISCONNECTED;
  ReleaseSock(sock);
  return ((void*)0);
 }

 FreePack(p);

 p = HttpClientRecv(sock);
 if (p == ((void*)0))
 {
  *err = ERR_DISCONNECTED;
  ReleaseSock(sock);
  return ((void*)0);
 }

 error = GetErrorFromPack(p);

 FreePack(p);

 if (error != ERR_NO_ERROR)
 {
  *err = error;
  ReleaseSock(sock);
  return ((void*)0);
 }

 SetTimeout(sock, TIMEOUT_INFINITE);

 rpc = StartRpcClient(sock, ((void*)0));
 ReleaseSock(sock);

 return rpc;
}
