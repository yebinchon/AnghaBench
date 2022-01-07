
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int t ;
typedef scalar_t__ UINT64 ;
typedef scalar_t__ UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_12__ {int ClientId; int ShowVgcLink; int IsVgcSupported; int OsType; int Win9x; int Unix; TYPE_2__* Rpc; } ;
struct TYPE_11__ {TYPE_3__* Param; } ;
struct TYPE_10__ {int ClientId; int ShowVgcLink; int IsVgcSupported; int OsType; } ;
typedef int SOCK ;
typedef TYPE_1__ RPC_CLIENT_VERSION ;
typedef TYPE_2__ RPC ;
typedef TYPE_3__ REMOTE_CLIENT ;


 scalar_t__ CLIENT_CONFIG_PORT ;
 scalar_t__ CLIENT_RPC_MODE_MANAGEMENT ;
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT ;
 scalar_t__ CLIENT_RPC_MODE_SHORTCUT_DISCONNECT ;
 int CLIENT_WIN32_REGKEYNAME ;
 int CLIENT_WIN32_REGVALUE_PID ;
 int CLIENT_WIN32_REGVALUE_PORT ;
 int CcGetClientVersion (TYPE_3__*,TYPE_1__*) ;
 scalar_t__ CheckTCPPort (char*,scalar_t__) ;
 int * Connect (char*,scalar_t__) ;
 scalar_t__ ERR_CONNECT_FAILED ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ Endian32 (scalar_t__) ;
 int GC_SVC_NAME_VPNCLIENT ;
 int INFINITE ;
 int MsIsServiceRunning (int ) ;
 scalar_t__ MsRegReadIntEx2 (int ,int ,int ,int,int) ;
 int OS_IS_UNIX (int ) ;
 int OS_IS_WINDOWS_9X (int ) ;
 int REG_LOCAL_MACHINE ;
 int RecvAll (int *,scalar_t__*,int,int) ;
 int ReleaseSock (int *) ;
 int SHA1_SIZE ;
 int SendAdd (int *,scalar_t__*,int) ;
 int SendAll (int *,scalar_t__*,int,int) ;
 int SendNow (int *,int) ;
 int SetTimeout (int *,int) ;
 int Sha0 (scalar_t__*,char*,int ) ;
 TYPE_2__* StartRpcClient (int *,int *) ;
 scalar_t__ StrCmpi (char*,char*) ;
 int StrCpy (int ,int,int ) ;
 int StrLen (char*) ;
 scalar_t__ Tick64 () ;
 int Zero (TYPE_1__*,int) ;
 TYPE_3__* ZeroMalloc (int) ;

REMOTE_CLIENT *CcConnectRpcEx(char *server_name, char *password, bool *bad_pass, bool *no_remote, UCHAR *key, UINT *key_error_code, bool shortcut_disconnect, UINT wait_retry)
{
 SOCK *s = ((void*)0);
 UINT i;
 UINT retcode;
 UINT rpc_mode = CLIENT_RPC_MODE_MANAGEMENT;
 RPC *rpc;
 REMOTE_CLIENT *ret;
 UCHAR hash_password[SHA1_SIZE];
 UINT port_start;
 UINT64 try_started = 0;
 bool ok;
 UINT reg_port = 0;
 UINT reg_pid = 0;

 if (server_name == ((void*)0))
 {
  return ((void*)0);
 }
 if (password == ((void*)0))
 {
  password = "";
 }

 if (key_error_code != ((void*)0))
 {
  *key_error_code = ERR_NO_ERROR;
 }

 if (bad_pass != ((void*)0))
 {
  *bad_pass = 0;
 }

 if (no_remote != ((void*)0))
 {
  *no_remote = 0;
 }
 port_start = CLIENT_CONFIG_PORT - 1;

RETRY:
 port_start++;

 if (port_start >= (CLIENT_CONFIG_PORT + 5))
 {
  return ((void*)0);
 }

 ok = 0;

 while (1)
 {
  for (i = port_start;i < (CLIENT_CONFIG_PORT + 5);i++)
  {
   if (CheckTCPPort(server_name, i))
   {
    ok = 1;
    break;
   }
  }

  if (ok)
  {
   break;
  }

  if (wait_retry == 0)
  {
   break;
  }

  if (try_started == 0)
  {
   try_started = Tick64();
  }

  if ((try_started + (UINT64)wait_retry) <= Tick64())
  {
   break;
  }
 }

 if (ok == 0)
 {
  if (key_error_code)
  {
   *key_error_code = ERR_CONNECT_FAILED;
  }
  return ((void*)0);
 }

 port_start = i;

 s = Connect(server_name, i);
 if (s == ((void*)0))
 {
  if (key_error_code)
  {
   *key_error_code = ERR_CONNECT_FAILED;
  }
  goto RETRY;
 }
L_TRY:

 SetTimeout(s, 10000);

 Sha0(hash_password, password, StrLen(password));

 if (key != ((void*)0))
 {
  if (shortcut_disconnect == 0)
  {
   rpc_mode = CLIENT_RPC_MODE_SHORTCUT;
  }
  else
  {
   rpc_mode = CLIENT_RPC_MODE_SHORTCUT_DISCONNECT;
  }
 }

 rpc_mode = Endian32(rpc_mode);
 SendAdd(s, &rpc_mode, sizeof(UINT));

 if (key != ((void*)0))
 {
  SendAdd(s, key, SHA1_SIZE);
 }
 else
 {
  SendAdd(s, hash_password, SHA1_SIZE);
 }

 if (SendNow(s, 0) == 0)
 {
  ReleaseSock(s);
  goto RETRY;
 }

 if (RecvAll(s, &retcode, sizeof(UINT), 0) == 0)
 {
  ReleaseSock(s);
  goto RETRY;
 }

 retcode = Endian32(retcode);

 if (retcode >= 1024)
 {
  ReleaseSock(s);
  goto RETRY;
 }

 if (key != ((void*)0))
 {
  if (key_error_code)
  {
   *key_error_code = retcode;
  }
  SendAll(s, &retcode, sizeof(UINT), 0);
  ReleaseSock(s);
  return ((void*)0);
 }

 switch (retcode)
 {
 case 1:
  if (bad_pass != ((void*)0))
  {
   *bad_pass = 1;
  }
  break;
 case 2:
  if (no_remote != ((void*)0))
  {
   *no_remote = 1;
  }
  break;
 }

 if (retcode != 0)
 {
  ReleaseSock(s);
  return ((void*)0);
 }

 SetTimeout(s, INFINITE);

 rpc = StartRpcClient(s, ((void*)0));

 ReleaseSock(s);

 ret = ZeroMalloc(sizeof(REMOTE_CLIENT));
 rpc->Param = ret;

 if (ret != ((void*)0))
 {
  RPC_CLIENT_VERSION t;

  ret->Rpc = rpc;
  Zero(&t, sizeof(t));
  CcGetClientVersion(ret, &t);
  ret->OsType = t.OsType;
  ret->Unix = OS_IS_UNIX(ret->OsType);
  ret->Win9x = OS_IS_WINDOWS_9X(ret->OsType);
  ret->IsVgcSupported = t.IsVgcSupported;
  ret->ShowVgcLink = t.ShowVgcLink;
  StrCpy(ret->ClientId, sizeof(ret->ClientId), t.ClientId);
 }

 return ret;
}
