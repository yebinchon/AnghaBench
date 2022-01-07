
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int date_str ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_11__ {int Method; } ;
struct TYPE_10__ {char* Data; } ;
typedef int SOCK ;
typedef TYPE_1__ HTTP_VALUE ;
typedef TYPE_2__ HTTP_HEADER ;


 int AddHttpValue (TYPE_2__*,int ) ;
 int FreeHttpHeader (TYPE_2__*) ;
 int GetHttpDateStr (char*,int,int ) ;
 TYPE_1__* GetHttpValue (TYPE_2__*,char*) ;
 int MAX_SIZE ;
 TYPE_2__* NewHttpHeader (char*,char*,char*) ;
 int NewHttpValue (char*,char*) ;
 int PostHttp (int *,TYPE_2__*,int *,int ) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int SystemTime64 () ;
 int ToStr (char*,int ) ;

bool AdminWebSendBody(SOCK *s, UINT status_code, char *status_string, UCHAR *data, UINT data_size, char *content_type, char *add_header_name, char *add_header_value,
       HTTP_HEADER *request_headers)
{
 HTTP_HEADER *h;
 char date_str[MAX_SIZE];
 char error_code_str[16];
 bool ret = 0;
 HTTP_VALUE *origin;
 if (s == ((void*)0) || status_string == ((void*)0) || (data_size != 0 && data == ((void*)0)) || request_headers == ((void*)0))
 {
  return 0;
 }
 if (content_type == ((void*)0))
 {
  content_type = "text/html; charset=utf-8";
 }

 ToStr(error_code_str, status_code);
 GetHttpDateStr(date_str, sizeof(date_str), SystemTime64());

 h = NewHttpHeader("HTTP/1.1", error_code_str, status_string);

 if (StrCmpi(request_headers->Method, "OPTIONS") == 0)
 {
  AddHttpValue(h, NewHttpValue("Allow", "OPTIONS, GET, POST"));
 }

 AddHttpValue(h, NewHttpValue("Cache-Control", "no-cache"));
 AddHttpValue(h, NewHttpValue("Content-Type", content_type));
 AddHttpValue(h, NewHttpValue("Date", date_str));
 AddHttpValue(h, NewHttpValue("Connection", "Keep-Alive"));
 AddHttpValue(h, NewHttpValue("Access-Control-Allow-Methods", "OPTIONS,GET,POST"));
 AddHttpValue(h, NewHttpValue("Access-Control-Allow-Headers", "X-VPNADMIN-HUBNAME,X-VPNADMIN-PASSWORD"));
 AddHttpValue(h, NewHttpValue("Access-Control-Allow-Credentials", "true"));

 origin = GetHttpValue(request_headers, "Origin");
 if (origin != ((void*)0))
 {
  AddHttpValue(h, NewHttpValue("Access-Control-Allow-Origin", origin->Data));
 }

 if (add_header_name != ((void*)0) && add_header_value != ((void*)0))
 {
  AddHttpValue(h, NewHttpValue(add_header_name, add_header_value));
 }

 ret = PostHttp(s, h, data, data_size);

 FreeHttpHeader(h);

 return ret;
}
