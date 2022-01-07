
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_51__ TYPE_8__ ;
typedef struct TYPE_50__ TYPE_7__ ;
typedef struct TYPE_49__ TYPE_6__ ;
typedef struct TYPE_48__ TYPE_5__ ;
typedef struct TYPE_47__ TYPE_4__ ;
typedef struct TYPE_46__ TYPE_3__ ;
typedef struct TYPE_45__ TYPE_2__ ;
typedef struct TYPE_44__ TYPE_1__ ;


struct TYPE_46__ {int size; int data; TYPE_6__* header; } ;
typedef TYPE_3__ WU_WEBPAGE ;
typedef scalar_t__ UINT ;
typedef int UCHAR ;
struct TYPE_51__ {int Size; int Buf; } ;
struct TYPE_50__ {int IsJsonRpc; int WasSstp; scalar_t__ JsonRpcAuthed; void* Type; TYPE_4__* FirstSock; TYPE_2__* Cedar; void* Err; } ;
struct TYPE_49__ {int Target; int Version; int Method; } ;
struct TYPE_48__ {int DisableJsonRpcWebApi; int DisableSSTPServer; scalar_t__ UseWebUI; } ;
struct TYPE_44__ {int* addr; } ;
struct TYPE_47__ {TYPE_1__ RemoteIP; scalar_t__ IsReverseAcceptedSocket; int SecureMode; } ;
struct TYPE_45__ {int WebUI; TYPE_5__* Server; } ;
typedef TYPE_4__ SOCK ;
typedef TYPE_5__ SERVER ;
typedef TYPE_6__ HTTP_HEADER ;
typedef TYPE_7__ CONNECTION ;
typedef TYPE_8__ BUF ;


 int AcceptSstp (TYPE_7__*) ;
 int AddHttpValue (TYPE_6__*,int ) ;
 int AdminWebProcGet (TYPE_7__*,TYPE_4__*,TYPE_6__*,int ) ;
 int AdminWebProcPost (TYPE_7__*,TYPE_4__*,TYPE_6__*,scalar_t__,int ) ;
 void* CONNECTION_TYPE_ADMIN_RPC ;
 void* CONNECTION_TYPE_OTHER ;
 scalar_t__ Cmp (int *,int ,scalar_t__) ;
 int Disconnect (TYPE_4__*) ;
 void* ERR_CLIENT_IS_NOT_VPN ;
 void* ERR_DISCONNECTED ;
 int Free (int *) ;
 int FreeBuf (TYPE_8__*) ;
 int FreeHttpHeader (TYPE_6__*) ;
 scalar_t__ GetContentLength (TYPE_6__*) ;
 int GetNoSstp () ;
 scalar_t__ GetServerCapsBool (TYPE_5__*,char*) ;
 char* HTTP_CONTENT_TYPE3 ;
 char* HTTP_CONTENT_TYPE5 ;
 char* HTTP_KEEP_ALIVE ;
 char* HTTP_PICTURES ;
 char* HTTP_SAITAMA ;
 char* HTTP_VPN_TARGET2 ;
 int HTTP_VPN_TARGET_POSTDATA ;
 int HttpSendForbidden (TYPE_4__*,int ,char*) ;
 int HttpSendNotFound (TYPE_4__*,int ) ;
 int HttpSendNotImplemented (TYPE_4__*,int ,int ,int ) ;
 int JsonRpcProcGet (TYPE_7__*,TYPE_4__*,TYPE_6__*,int ) ;
 int JsonRpcProcOptions (TYPE_7__*,TYPE_4__*,TYPE_6__*,int ) ;
 int JsonRpcProcPost (TYPE_7__*,TYPE_4__*,TYPE_6__*,scalar_t__) ;
 scalar_t__ MAX_WATERMARK_SIZE ;
 int * Malloc (scalar_t__) ;
 TYPE_6__* NewHttpHeader (char*,char*,char*) ;
 int NewHttpValue (char*,char*) ;
 int PostHttp (TYPE_4__*,TYPE_6__*,int ,int ) ;
 TYPE_8__* ReadDump (char*) ;
 int RecvAll (TYPE_4__*,int *,scalar_t__,int ) ;
 TYPE_6__* RecvHttpHeader (TYPE_4__*) ;
 char* SSTP_URI ;
 int Saitama ;
 int SizeOfSaitama () ;
 scalar_t__ SizeOfWaterMark () ;
 scalar_t__ StartWith (int ,char*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 scalar_t__ StrLen (int ) ;
 int WaterMark ;
 int WuFreeWebPage (TYPE_3__*) ;
 TYPE_3__* WuGetPage (int ,int ) ;

bool ServerDownloadSignature(CONNECTION *c, char **error_detail_str)
{
 HTTP_HEADER *h;
 UCHAR *data;
 UINT data_size;
 SOCK *s;
 UINT num = 0, max = 19;
 SERVER *server;
 char *vpn_http_target = HTTP_VPN_TARGET2;

 if (c == ((void*)0))
 {
  return 0;
 }

 server = c->Cedar->Server;

 s = c->FirstSock;

 while (1)
 {
  bool not_found_error = 0;

  num++;
  if (num > max)
  {

   Disconnect(s);
   c->Err = ERR_CLIENT_IS_NOT_VPN;

   *error_detail_str = "HTTP_TOO_MANY_REQUEST";
   return 0;
  }

  h = RecvHttpHeader(s);
  if (h == ((void*)0))
  {
   c->Err = ERR_CLIENT_IS_NOT_VPN;
   if (c->IsJsonRpc)
   {
    c->Err = ERR_DISCONNECTED;
   }
   return 0;
  }


  if (StrCmpi(h->Method, "POST") == 0)
  {

   data_size = GetContentLength(h);

   if (server->DisableJsonRpcWebApi == 0)
   {
    if (StrCmpi(h->Target, "/api") == 0 || StrCmpi(h->Target, "/api/") == 0)
    {
     c->IsJsonRpc = 1;
     c->Type = CONNECTION_TYPE_ADMIN_RPC;

     JsonRpcProcPost(c, s, h, data_size);

     FreeHttpHeader(h);

     if (c->JsonRpcAuthed)
     {
      num = 0;
     }

     continue;
    }
    else if (StartWith(h->Target, "/admin"))
    {
     c->IsJsonRpc = 1;
     c->Type = CONNECTION_TYPE_ADMIN_RPC;

     AdminWebProcPost(c, s, h, data_size, h->Target);

     FreeHttpHeader(h);

     if (c->JsonRpcAuthed)
     {
      num = 0;
     }

     continue;
    }
   }

   if ((data_size > MAX_WATERMARK_SIZE || data_size < SizeOfWaterMark()) && (data_size != StrLen(HTTP_VPN_TARGET_POSTDATA)))
   {

    HttpSendForbidden(s, h->Target, ((void*)0));
    FreeHttpHeader(h);
    c->Err = ERR_CLIENT_IS_NOT_VPN;
    *error_detail_str = "POST_Recv_TooLong";
    return 0;
   }
   data = Malloc(data_size);
   if (RecvAll(s, data, data_size, s->SecureMode) == 0)
   {

    Free(data);
    FreeHttpHeader(h);
    c->Err = ERR_DISCONNECTED;
    *error_detail_str = "POST_Recv_Failed";
    return 0;
   }

   if ((StrCmpi(h->Target, vpn_http_target) != 0) || not_found_error)
   {

    HttpSendNotFound(s, h->Target);
    Free(data);
    FreeHttpHeader(h);
    *error_detail_str = "POST_Target_Wrong";
   }
   else
   {

    if ((data_size == StrLen(HTTP_VPN_TARGET_POSTDATA) && (Cmp(data, HTTP_VPN_TARGET_POSTDATA, data_size) == 0))
     || ((data_size >= SizeOfWaterMark()) && Cmp(data, WaterMark, SizeOfWaterMark()) == 0))
    {

     Free(data);
     FreeHttpHeader(h);
     return 1;
    }
    else
    {

     HttpSendForbidden(s, h->Target, ((void*)0));
     FreeHttpHeader(h);
     *error_detail_str = "POST_WaterMark_Error";
    }
   }
  }
  else if (StrCmpi(h->Method, "OPTIONS") == 0)
  {
   if (server->DisableJsonRpcWebApi == 0)
   {
    if (StrCmpi(h->Target, "/api") == 0 || StrCmpi(h->Target, "/api/") == 0 || StartWith(h->Target, "/admin"))
    {
     c->IsJsonRpc = 1;
     c->Type = CONNECTION_TYPE_ADMIN_RPC;

     JsonRpcProcOptions(c, s, h, h->Target);

     FreeHttpHeader(h);

     num = 0;

     continue;
    }
   }
  }
  else if (StrCmpi(h->Method, "SSTP_DUPLEX_POST") == 0 && (server->DisableSSTPServer == 0 || s->IsReverseAcceptedSocket
   ) &&
   GetServerCapsBool(server, "b_support_sstp") && GetNoSstp() == 0)
  {

   c->WasSstp = 1;

   if (StrCmpi(h->Target, SSTP_URI) == 0)
   {
    bool sstp_ret;

    c->Type = CONNECTION_TYPE_OTHER;

    sstp_ret = AcceptSstp(c);

    c->Err = ERR_DISCONNECTED;
    FreeHttpHeader(h);

    if (sstp_ret)
    {
     *error_detail_str = "";
    }
    else
    {
     *error_detail_str = "SSTP_ABORT";
    }

    return 0;
   }
   else
   {

    HttpSendNotFound(s, h->Target);
    *error_detail_str = "SSTP_URL_WRONG";
   }

   FreeHttpHeader(h);
  }
  else
  {

   if (StrCmpi(h->Method, "GET") != 0 && StrCmpi(h->Method, "HEAD") != 0
     && StrCmpi(h->Method, "POST") != 0)
   {

    HttpSendNotImplemented(s, h->Method, h->Target, h->Version);
    *error_detail_str = "HTTP_BAD_METHOD";
   }
   else
   {

    if (StrCmpi(h->Target, "/") == 0)
    {

     *error_detail_str = "HTTP_ROOT";

     {

      HttpSendForbidden(c->FirstSock, h->Target, "");
     }
    }
    else
    {
     bool b = 0;


     if (c->Cedar->Server != ((void*)0) && c->Cedar->Server->UseWebUI)
     {
      WU_WEBPAGE *page;


      page = WuGetPage(h->Target, c->Cedar->WebUI);

      if (page != ((void*)0))
      {
       PostHttp(s, page->header, page->data, page->size);
       b = 1;
       WuFreeWebPage(page);
      }

     }

     if (c->FirstSock->RemoteIP.addr[0] == 127)
     {
      if (StrCmpi(h->Target, HTTP_SAITAMA) == 0)
      {

       FreeHttpHeader(h);
       h = NewHttpHeader("HTTP/1.1", "202", "OK");
       AddHttpValue(h, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE3));
       AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));
       AddHttpValue(h, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));
       PostHttp(s, h, Saitama, SizeOfSaitama());
       b = 1;
      }
      else if (StartWith(h->Target, HTTP_PICTURES))
      {
       BUF *buf;


       buf = ReadDump("|Pictures.mht");

       if (buf != ((void*)0))
       {
        FreeHttpHeader(h);
        h = NewHttpHeader("HTTP/1.1", "202", "OK");
        AddHttpValue(h, NewHttpValue("Content-Type", HTTP_CONTENT_TYPE5));
        AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));
        AddHttpValue(h, NewHttpValue("Keep-Alive", HTTP_KEEP_ALIVE));
        PostHttp(s, h, buf->Buf, buf->Size);
        b = 1;

        FreeBuf(buf);
       }
      }
     }

     if (b == 0)
     {
      if (server->DisableJsonRpcWebApi == 0)
      {
       if (StartWith(h->Target, "/api?") || StartWith(h->Target, "/api/") || StrCmpi(h->Target, "/api") == 0)
       {
        c->IsJsonRpc = 1;
        c->Type = CONNECTION_TYPE_ADMIN_RPC;

        JsonRpcProcGet(c, s, h, h->Target);

        if (c->JsonRpcAuthed)
        {
         num = 0;
        }

        FreeHttpHeader(h);

        continue;
       }
       else if (StartWith(h->Target, "/admin"))
       {
        c->IsJsonRpc = 1;
        c->Type = CONNECTION_TYPE_ADMIN_RPC;

        AdminWebProcGet(c, s, h, h->Target);

        if (c->JsonRpcAuthed)
        {
         num = 0;
        }

        FreeHttpHeader(h);

        continue;
       }
      }
     }

     if (b == 0)
     {

      HttpSendNotFound(s, h->Target);

      *error_detail_str = "HTTP_NOT_FOUND";
     }
    }
   }
   FreeHttpHeader(h);
  }
 }
}
