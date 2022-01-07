
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int mimepost; int ** str; } ;
struct TYPE_3__ {int * url; void* url_alloc; int * referer; void* referer_alloc; } ;
struct Curl_easy {TYPE_2__ set; TYPE_1__ change; } ;
typedef enum dupstring { ____Placeholder_dupstring } dupstring ;


 int Curl_mime_cleanpart (int *) ;
 int Curl_safefree (int *) ;
 void* FALSE ;
 int STRING_LAST ;

void Curl_freeset(struct Curl_easy *data)
{

  enum dupstring i;
  for(i = (enum dupstring)0; i < STRING_LAST; i++) {
    Curl_safefree(data->set.str[i]);
  }

  if(data->change.referer_alloc) {
    Curl_safefree(data->change.referer);
    data->change.referer_alloc = FALSE;
  }
  data->change.referer = ((void*)0);
  if(data->change.url_alloc) {
    Curl_safefree(data->change.url);
    data->change.url_alloc = FALSE;
  }
  data->change.url = ((void*)0);

  Curl_mime_cleanpart(&data->set.mimepost);
}
