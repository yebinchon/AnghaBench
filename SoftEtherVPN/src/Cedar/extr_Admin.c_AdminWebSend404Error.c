
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SOCK ;
typedef int HTTP_HEADER ;


 int AdminWebSendBody (int *,int,char*,char*,int ,int *,int *,int *,int *) ;
 int StrLen (char*) ;

bool AdminWebSend404Error(SOCK *s, HTTP_HEADER *request_headers)
{
 char *body = "<!DOCTYPE HTML PUBLIC \"-//IETF//DTD HTML 2.0//EN\">\r\n<html><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL was not found on this server.</p></body></html>\r\n";
 if (s == ((void*)0) || request_headers == ((void*)0))
 {
  return 0;
 }

 return AdminWebSendBody(s, 404, "Not Found", body, StrLen(body), ((void*)0), ((void*)0), ((void*)0), request_headers);
}
