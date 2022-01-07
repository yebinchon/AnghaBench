
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int X ;
typedef int URL_DATA ;
typedef int BUF ;


 int * BufToX (int *,int ) ;
 int CERT_HTTP_DOWNLOAD_MAXSIZE ;
 int CERT_HTTP_DOWNLOAD_TIMEOUT ;
 int Debug (char*,...) ;
 int FreeBuf (int *) ;
 int * HttpRequestEx (int *,int *,int ,int ,int *,int,int *,int *,int *,int *,int *,int ) ;
 int IsBase64 (int *) ;
 scalar_t__ IsEmptyStr (char*) ;
 int ParseUrl (int *,char*,int,int *) ;

X *DownloadCert(char *url)
{
 BUF *b;
 URL_DATA url_data;
 X *ret = ((void*)0);

 if (IsEmptyStr(url))
 {
  return ((void*)0);
 }

 Debug("Trying to download a cert from %s ...\n", url);

 if (ParseUrl(&url_data, url, 0, ((void*)0)) == 0)
 {
  Debug("Download failed.\n");
  return ((void*)0);
 }

 b = HttpRequestEx(&url_data, ((void*)0), CERT_HTTP_DOWNLOAD_TIMEOUT, CERT_HTTP_DOWNLOAD_TIMEOUT,
  ((void*)0), 0, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), CERT_HTTP_DOWNLOAD_MAXSIZE);

 if (b == ((void*)0))
 {
  Debug("Download failed.\n");
  return ((void*)0);
 }

 ret = BufToX(b, IsBase64(b));

 FreeBuf(b);

 Debug("Download ok.\n");
 return ret;
}
