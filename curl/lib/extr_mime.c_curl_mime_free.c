
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {struct TYPE_7__* nextpart; struct TYPE_7__* firstpart; } ;
typedef TYPE_1__ curl_mimepart ;
typedef TYPE_1__ curl_mime ;


 int Curl_mime_cleanpart (TYPE_1__*) ;
 int free (TYPE_1__*) ;
 int mime_subparts_unbind (TYPE_1__*) ;

void curl_mime_free(curl_mime *mime)
{
  curl_mimepart *part;

  if(mime) {
    mime_subparts_unbind(mime);
    while(mime->firstpart) {
      part = mime->firstpart;
      mime->firstpart = part->nextpart;
      Curl_mime_cleanpart(part);
      free(part);
    }
    free(mime);
  }
}
