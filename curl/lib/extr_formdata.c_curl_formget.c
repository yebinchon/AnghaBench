
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_httppost {int dummy; } ;
typedef int curl_mimepart ;
typedef size_t (* curl_formget_callback ) (void*,char*,size_t) ;
typedef int buffer ;
typedef scalar_t__ CURLcode ;


 scalar_t__ CURLE_READ_ERROR ;


 scalar_t__ Curl_getformdata (int *,int *,struct curl_httppost*,int *) ;
 int Curl_mime_cleanpart (int *) ;
 int Curl_mime_initpart (int *,int *) ;
 scalar_t__ Curl_mime_prepare_headers (int *,char*,int *,int ) ;
 size_t Curl_mime_read (char*,int,int,int *) ;
 int MIMESTRATEGY_FORM ;

int curl_formget(struct curl_httppost *form, void *arg,
                 curl_formget_callback append)
{
  CURLcode result;
  curl_mimepart toppart;

  Curl_mime_initpart(&toppart, ((void*)0));
  result = Curl_getformdata(((void*)0), &toppart, form, ((void*)0));
  if(!result)
    result = Curl_mime_prepare_headers(&toppart, "multipart/form-data",
                                       ((void*)0), MIMESTRATEGY_FORM);

  while(!result) {
    char buffer[8192];
    size_t nread = Curl_mime_read(buffer, 1, sizeof(buffer), &toppart);

    if(!nread)
      break;

    switch(nread) {
    default:
      if(append(arg, buffer, nread) != nread)
        result = CURLE_READ_ERROR;
      break;
    case 129:
    case 128:
      break;
    }
  }

  Curl_mime_cleanpart(&toppart);
  return (int) result;
}
