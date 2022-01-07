
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int url2 ;
typedef int url ;
typedef int filename ;
typedef size_t UINT ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef int SOCK ;
typedef int HTTP_HEADER ;
typedef int CONNECTION ;
typedef TYPE_1__ BUF ;
typedef int ADMIN ;


 TYPE_1__* AdminWebProcessServerSideInclude (TYPE_1__*,char*,int ) ;
 int AdminWebSend302Redirect (int *,char*,char*,int *) ;
 int AdminWebSend404Error (int *,int *) ;
 int AdminWebSendBody (int *,int,char*,int ,int ,char*,int *,int *,int *) ;
 TYPE_1__* AdminWebTryFindAndReadFile (char*,char*,char*,char*,int,int*) ;
 int EndWith (char*,char*) ;
 int FreeBuf (TYPE_1__*) ;
 char* GetMimeTypeFromFileName (char*) ;
 scalar_t__ InStr (char*,char*) ;
 int MAX_PATH ;
 int StrCat (char*,int,char*) ;
 int StrCpy (char*,int,char*) ;
 size_t StrLen (char*) ;
 int TrimEndWith (char*,int,char*,char*) ;

bool AdminWebHandleFileRequest(ADMIN *a, CONNECTION *c, SOCK *s, HTTP_HEADER *h, char *url_src, char *query_string, char *virtual_root_dir, char *physical_root_dir)
{
 bool ret = 0;
 char url[MAX_PATH];
 UINT i, len;
 if (a == ((void*)0) || c == ((void*)0) || s == ((void*)0) || h == ((void*)0) || query_string == ((void*)0) ||
  virtual_root_dir == ((void*)0) || physical_root_dir == ((void*)0))
 {
  return 0;
 }

 StrCpy(url, sizeof(url), url_src);

 len = StrLen(url);
 for (i = 0;i < len;i++)
 {
  if (url[i] == '\\')
  {
   url[i] = '/';
  }
 }


 if (InStr(url, "..") || InStr(url, "//") || InStr(url, "\\\\") || InStr(url, "/\\") || InStr(url, "\\/"))
 {
  ret = AdminWebSend404Error(s, h);
 }
 else
 {
  char filename[MAX_PATH];
  bool is_index_file = 0;

  BUF *b = AdminWebTryFindAndReadFile(virtual_root_dir, physical_root_dir, url,
   filename, sizeof(filename), &is_index_file);

  if (b == ((void*)0))
  {
   ret = AdminWebSend404Error(s, h);
  }
  else
  {
   if (is_index_file && EndWith(url, "/") == 0)
   {
    char url2[MAX_PATH];
    StrCpy(url2, sizeof(url2), url);
    StrCat(url2, sizeof(url2), "/");
    ret = AdminWebSend302Redirect(s, url2, query_string, h);
   }
   else if (is_index_file == 0 && EndWith(url, "/"))
   {
    char url2[MAX_PATH];
    TrimEndWith(url2, sizeof(url2), url, "/");
    ret = AdminWebSend302Redirect(s, url2, query_string, h);
   }
   else
   {
    BUF *b2 = AdminWebProcessServerSideInclude(b, filename, 0);
    char *mime = GetMimeTypeFromFileName(filename);

    if (mime == ((void*)0))
    {
     mime = "application/octet-stream";
    }

    ret = AdminWebSendBody(s, 200, "OK", b2->Buf, b2->Size, mime, ((void*)0), ((void*)0), h);

    FreeBuf(b2);
   }
   FreeBuf(b);
  }
 }

 return ret;
}
