
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * mimetype; } ;
typedef TYPE_1__ curl_mimepart ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int CURLE_OUT_OF_MEMORY ;
 int Curl_safefree (int *) ;
 int * strdup (char const*) ;

CURLcode curl_mime_type(curl_mimepart *part, const char *mimetype)
{
  if(!part)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  Curl_safefree(part->mimetype);
  part->mimetype = ((void*)0);

  if(mimetype) {
    part->mimetype = strdup(mimetype);
    if(!part->mimetype)
      return CURLE_OUT_OF_MEMORY;
  }

  return CURLE_OK;
}
