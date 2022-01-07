
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ CURLUcode ;
typedef int CURLUPart ;
typedef int CURLU ;


 int ASCII_CCSID ;
 scalar_t__ CURLUE_BAD_PARTPOINTER ;
 scalar_t__ CURLUE_OK ;
 scalar_t__ CURLUE_OUT_OF_MEMORY ;
 scalar_t__ curl_url_get (int *,int ,char**,unsigned int) ;
 char* dynconvert (unsigned int,char*,int,int ) ;
 int free (char*) ;

CURLUcode
curl_url_get_ccsid(CURLU *handle, CURLUPart what, char **part,
                   unsigned int flags, unsigned int ccsid)

{
  char *s = (char *)((void*)0);
  CURLUcode result;

  if(!part)
    return CURLUE_BAD_PARTPOINTER;

  *part = (char *)((void*)0);
  result = curl_url_get(handle, what, &s, flags);
  if(result == CURLUE_OK) {
    if(s) {
      *part = dynconvert(ccsid, s, -1, ASCII_CCSID);
      if(!*part)
        result = CURLUE_OUT_OF_MEMORY;
    }
  }
  if(s)
    free(s);
  return result;
}
