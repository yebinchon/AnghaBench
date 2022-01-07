
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* Server; int * Rpc; } ;
struct TYPE_9__ {int RemoteHostname; int RemotePort; int RemoteIP; } ;
struct TYPE_8__ {int Cedar; } ;
typedef TYPE_2__ SOCK ;
typedef int RPC ;
typedef int PACK ;
typedef int JSON_VALUE ;
typedef int CONNECTION ;
typedef TYPE_3__ ADMIN ;


 int AdminDispatch ;
 int * CallRpcDispatcher (int *,int *) ;
 int ERR_NOT_SUPPORTED ;
 int FreePack (int *) ;
 scalar_t__ GetErrorFromPack (int *) ;
 int * JsonRpcNewError (scalar_t__,int ) ;
 int * JsonRpcNewResponse (int *) ;
 int * JsonToPack (int *) ;
 int PackAddStr (int *,char*,char*) ;
 int * PackError (int ) ;
 int RpcFreeEx (int *,int) ;
 int SLog (int ,char*,int *,int ,int ,char*,scalar_t__,int ) ;
 int * StartRpcServer (TYPE_2__*,int ,TYPE_3__*) ;
 int _E (scalar_t__) ;

JSON_VALUE *JsonRpcProcRequestObject(ADMIN *admin, CONNECTION *c, SOCK *s, JSON_VALUE *json_req, char *method_name)
{
 PACK *pack_request;
 JSON_VALUE *ret = ((void*)0);
 if (c == ((void*)0) || s == ((void*)0) || json_req == ((void*)0) || admin == ((void*)0))
 {
  return ((void*)0);
 }

 pack_request = JsonToPack(json_req);

 PackAddStr(pack_request, "function_name", method_name);

 if (pack_request != ((void*)0))
 {
  RPC *rpc;
  PACK *pack_response;
  UINT err;


  rpc = StartRpcServer(s, AdminDispatch, admin);

  admin->Rpc = rpc;

  pack_response = CallRpcDispatcher(rpc, pack_request);

  if (pack_response == ((void*)0))
  {
   pack_response = PackError(ERR_NOT_SUPPORTED);
  }

  RpcFreeEx(rpc, 1);

  FreePack(pack_request);


  err = GetErrorFromPack(pack_response);
  if (err != 0)
  {

   ret = JsonRpcNewError(err, _E(err));
  }
  else
  {

   ret = JsonRpcNewResponse(pack_response);
  }

  SLog(admin->Server->Cedar, "LS_API_RPC_CALL",
   &s->RemoteIP, s->RemotePort, s->RemoteHostname,
   method_name, err, _E(err));

  FreePack(pack_response);
 }

 return ret;
}
