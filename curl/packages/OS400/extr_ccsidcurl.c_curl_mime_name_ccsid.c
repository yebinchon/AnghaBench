
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int CURLcode ;


 int curl_mime_name ;
 int mime_string_call (int *,char const*,unsigned int,int ) ;

CURLcode
curl_mime_name_ccsid(curl_mimepart *part, const char *name, unsigned int ccsid)

{
  return mime_string_call(part, name, ccsid, curl_mime_name);
}
