
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLUcode ;
typedef int CURLUPart ;
typedef int CURLU ;


 int ASCII_CCSID ;
 int CURLUE_OUT_OF_MEMORY ;
 int curl_url_set (int *,int ,char*,unsigned int) ;
 char* dynconvert (int ,char const*,int,unsigned int) ;
 int free (char*) ;

CURLUcode
curl_url_set_ccsid(CURLU *handle, CURLUPart what, const char *part,
                   unsigned int flags, unsigned int ccsid)

{
  char *s = (char *)((void*)0);
  CURLUcode result;

  if(part) {
    s = dynconvert(ASCII_CCSID, part, -1, ccsid);
    if(!s)
      return CURLUE_OUT_OF_MEMORY;
  }
  result = curl_url_set(handle, what, s, flags);
  if(s)
    free(s);
  return result;
}
