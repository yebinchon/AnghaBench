
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retcode ;
typedef int response ;
typedef int rand ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
typedef int SOCK ;
typedef int RPC ;


 int * Connect (char*,scalar_t__) ;
 scalar_t__ EL_ADMIN_PORT ;
 scalar_t__ ERR_AUTH_FAILED ;
 scalar_t__ ERR_CONNECT_FAILED ;
 scalar_t__ ERR_INTERNAL_ERROR ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_PROTOCOL_ERROR ;
 int Endian32 (int) ;
 int INFINITE ;
 int RecvAll (int *,int*,int,int) ;
 int ReleaseSock (int *) ;
 int SHA1_SIZE ;
 int SecurePassword (int*,int*,int*) ;
 int SendAll (int *,int*,int,int) ;
 int SetTimeout (int *,int) ;
 int Sha0 (int*,char*,int ) ;
 int * StartRpcClient (int *,int *) ;
 int StrLen (char*) ;
 int Zero (int*,int) ;

UINT EcConnect(char *host, UINT port, char *password, RPC **rpc)
{
 SOCK *s;
 UCHAR password_hash[SHA1_SIZE];
 UCHAR rand[SHA1_SIZE];
 UCHAR response[SHA1_SIZE];
 bool retcode;

 if (host == ((void*)0))
 {
  host = "localhost";
 }
 if (port == 0)
 {
  port = EL_ADMIN_PORT;
 }
 if (password == ((void*)0))
 {
  password = "";
 }
 if (rpc == ((void*)0))
 {
  return ERR_INTERNAL_ERROR;
 }


 s = Connect(host, port);
 if (s == ((void*)0))
 {

  return ERR_CONNECT_FAILED;
 }

 SetTimeout(s, 5000);


 Sha0(password_hash, password, StrLen(password));


 Zero(rand, sizeof(rand));
 (void)RecvAll(s, rand, sizeof(rand), 0);
 SecurePassword(response, password_hash, rand);


 SendAll(s, response, sizeof(response), 0);


 retcode = 0;
 if (RecvAll(s, &retcode, sizeof(retcode), 0) == 0)
 {

  ReleaseSock(s);
  return ERR_PROTOCOL_ERROR;
 }
 retcode = Endian32(retcode);

 if (retcode == 0)
 {

  ReleaseSock(s);
  return ERR_AUTH_FAILED;
 }


 SetTimeout(s, INFINITE);

 *rpc = StartRpcClient(s, ((void*)0));

 ReleaseSock(s);

 return ERR_NO_ERROR;
}
