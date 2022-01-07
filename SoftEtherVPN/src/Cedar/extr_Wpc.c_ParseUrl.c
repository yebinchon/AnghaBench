
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tmp ;
typedef int server_port ;
struct TYPE_4__ {char* Method; char* Referer; int Secure; char* Target; char* HostName; int Port; char* HeaderHostName; } ;
typedef TYPE_1__ URL_DATA ;
typedef scalar_t__ UINT ;


 int Format (char*,int,char*,char*,int) ;
 int Free (char*) ;
 scalar_t__ INFINITE ;
 int MAX_HOST_NAME_LEN ;
 int MAX_SIZE ;
 int ParseHostPort (char*,char**,scalar_t__*,int) ;
 scalar_t__ SearchStrEx (char*,char*,int ,int) ;
 scalar_t__ StartWith (char*,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int Trim (char*) ;
 char* WPC_HTTP_GET_NAME ;
 char* WPC_HTTP_POST_NAME ;
 int Zero (TYPE_1__*,int) ;

bool ParseUrl(URL_DATA *data, char *str, bool is_post, char *referrer)
{
 char tmp[MAX_SIZE * 3];
 char server_port[MAX_HOST_NAME_LEN + 16];
 char *s = ((void*)0);
 char *host;
 UINT port;
 UINT i;

 if (data == ((void*)0) || str == ((void*)0))
 {
  return 0;
 }

 Zero(data, sizeof(URL_DATA));

 if (is_post)
 {
  StrCpy(data->Method, sizeof(data->Method), WPC_HTTP_POST_NAME);
 }
 else
 {
  StrCpy(data->Method, sizeof(data->Method), WPC_HTTP_GET_NAME);
 }

 if (referrer != ((void*)0))
 {
  StrCpy(data->Referer, sizeof(data->Referer), referrer);
 }

 StrCpy(tmp, sizeof(tmp), str);
 Trim(tmp);


 if (StartWith(tmp, "http://"))
 {
  data->Secure = 0;
  s = &tmp[7];
 }
 else if (StartWith(tmp, "https://"))
 {
  data->Secure = 1;
  s = &tmp[8];
 }
 else
 {
  if (SearchStrEx(tmp, "://", 0, 0) != INFINITE)
  {
   return 0;
  }
  data->Secure = 0;
  s = &tmp[0];
 }


 StrCpy(server_port, sizeof(server_port), s);
 i = SearchStrEx(server_port, "/", 0, 0);
 if (i != INFINITE)
 {
  server_port[i] = 0;
  s += StrLen(server_port);
  StrCpy(data->Target, sizeof(data->Target), s);
 }
 else
 {
  StrCpy(data->Target, sizeof(data->Target), "/");
 }

 if (ParseHostPort(server_port, &host, &port, data->Secure ? 443 : 80) == 0)
 {
  return 0;
 }

 StrCpy(data->HostName, sizeof(data->HostName), host);
 data->Port = port;

 Free(host);

 if ((data->Secure && data->Port == 443) || (data->Secure == 0 && data->Port == 80))
 {
  StrCpy(data->HeaderHostName, sizeof(data->HeaderHostName), data->HostName);
 }
 else
 {
  Format(data->HeaderHostName, sizeof(data->HeaderHostName),
   "%s:%u", data->HostName, data->Port);
 }

 return 1;
}
