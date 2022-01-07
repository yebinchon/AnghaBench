
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int CURLcode ;


 int CURLE_OUT_OF_MEMORY ;
 int curl_mime_name (int *,char const*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static CURLcode setname(curl_mimepart *part, const char *name, size_t len)
{
  char *zname;
  CURLcode res;

  if(!name || !len)
    return curl_mime_name(part, name);
  zname = malloc(len + 1);
  if(!zname)
    return CURLE_OUT_OF_MEMORY;
  memcpy(zname, name, len);
  zname[len] = '\0';
  res = curl_mime_name(part, zname);
  free(zname);
  return res;
}
