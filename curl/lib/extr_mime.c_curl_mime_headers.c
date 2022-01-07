
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct curl_slist {int dummy; } ;
struct TYPE_3__ {int flags; struct curl_slist* userheaders; } ;
typedef TYPE_1__ curl_mimepart ;
typedef int CURLcode ;


 int CURLE_BAD_FUNCTION_ARGUMENT ;
 int CURLE_OK ;
 int MIME_USERHEADERS_OWNER ;
 int curl_slist_free_all (struct curl_slist*) ;

CURLcode curl_mime_headers(curl_mimepart *part,
                           struct curl_slist *headers, int take_ownership)
{
  if(!part)
    return CURLE_BAD_FUNCTION_ARGUMENT;

  if(part->flags & MIME_USERHEADERS_OWNER) {
    if(part->userheaders != headers)
      curl_slist_free_all(part->userheaders);
    part->flags &= ~MIME_USERHEADERS_OWNER;
  }
  part->userheaders = headers;
  if(headers && take_ownership)
    part->flags |= MIME_USERHEADERS_OWNER;
  return CURLE_OK;
}
