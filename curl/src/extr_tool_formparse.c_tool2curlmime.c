
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subparts; } ;
typedef TYPE_1__ tool_mime ;
typedef int curl_mime ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 scalar_t__ CURLE_OUT_OF_MEMORY ;
 int curl_mime_free (int *) ;
 int * curl_mime_init (int *) ;
 scalar_t__ tool2curlparts (int *,int ,int *) ;

CURLcode tool2curlmime(CURL *curl, tool_mime *m, curl_mime **mime)
{
  CURLcode ret = CURLE_OK;

  *mime = curl_mime_init(curl);
  if(!*mime)
    ret = CURLE_OUT_OF_MEMORY;
  else
    ret = tool2curlparts(curl, m->subparts, *mime);
  if(ret) {
    curl_mime_free(*mime);
    *mime = ((void*)0);
  }
  return ret;
}
