
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int curl_mimepart ;
typedef int CURLcode ;


 int ASCII_CCSID ;
 int CURLE_OUT_OF_MEMORY ;
 int curl_mime_data (int *,char const*,size_t) ;
 char* dynconvert (int ,char const*,size_t,unsigned int) ;
 int free (char*) ;

CURLcode
curl_mime_data_ccsid(curl_mimepart *part,
                     const char *data, size_t datasize, unsigned int ccsid)

{
  char *s = (char *) ((void*)0);
  CURLcode result;

  if(!data)
    return curl_mime_data(part, data, datasize);
  s = dynconvert(ASCII_CCSID, data, datasize, ccsid);
  if(!s)
    return CURLE_OUT_OF_MEMORY;

  result = curl_mime_data(part, s, datasize);
  free(s);
  return result;
}
