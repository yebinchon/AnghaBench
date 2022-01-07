
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SOCK ;
typedef int HTTP_HEADER ;


 int AdminWebSendBody (int *,int,char*,char*,int ,int *,char*,char*,int *) ;
 int Free (char*) ;
 int IsEmptyStr (char*) ;
 int MAX_SIZE ;
 int ReplaceStrEx (char*,int,char*,char*,char*,int) ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 int StrLen (char*) ;
 int StrSize (char*) ;
 char* ZeroMalloc (int) ;

bool AdminWebSend302Redirect(SOCK *s, char *url, char *query_string, HTTP_HEADER *request_headers)
{
 bool ret = 0;
 char *txt;
 UINT txt_size;
 char *url2;
 UINT url2_size;
 char *body = "<html><head><title>Object moved</title></head><body>\r\n<h2>Object moved to <a href=\"$URL$\">here</a>.</h2>\r\n</body></html>";
 if (s == ((void*)0) || url == ((void*)0) || request_headers == ((void*)0))
 {
  return 0;
 }

 url2_size = (StrSize(url) + StrSize(query_string) + MAX_SIZE) * 2;
 url2 = ZeroMalloc(url2_size);

 StrCpy(url2, url2_size, url);
 if (IsEmptyStr(query_string) == 0)
 {
  StrCat(url2, url2_size, "?");
  StrCat(url2, url2_size, query_string);
 }

 txt_size = (StrSize(body) + StrSize(url2) + MAX_SIZE) * 2;
 txt = ZeroMalloc(txt_size);

 ReplaceStrEx(txt, txt_size, body, "$URL$", url2, 0);

 ret = AdminWebSendBody(s, 302, "Found", txt, StrLen(txt), ((void*)0), "Location", url2, request_headers);

 Free(txt);

 Free(url2);

 return ret;
}
