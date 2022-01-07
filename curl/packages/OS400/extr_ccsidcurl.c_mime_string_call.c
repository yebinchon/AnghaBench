
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int CURLcode ;


 int ASCII_CCSID ;
 int CURLE_OUT_OF_MEMORY ;
 char* dynconvert (int ,char const*,int,unsigned int) ;
 int free (char*) ;

__attribute__((used)) static CURLcode
mime_string_call(curl_mimepart *part, const char *string, unsigned int ccsid,
                 CURLcode (*mimefunc)(curl_mimepart *part, const char *string))

{
  char *s = (char *) ((void*)0);
  CURLcode result;

  if(!string)
    return mimefunc(part, string);
  s = dynconvert(ASCII_CCSID, string, -1, ccsid);
  if(!s)
    return CURLE_OUT_OF_MEMORY;

  result = mimefunc(part, s);
  free(s);
  return result;
}
