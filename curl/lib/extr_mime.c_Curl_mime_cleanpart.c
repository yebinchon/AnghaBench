
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int easy; int filename; int name; int mimetype; int userheaders; int curlheaders; } ;
typedef TYPE_1__ curl_mimepart ;


 int Curl_mime_initpart (TYPE_1__*,int ) ;
 int Curl_safefree (int ) ;
 int MIME_USERHEADERS_OWNER ;
 int cleanup_part_content (TYPE_1__*) ;
 int curl_slist_free_all (int ) ;

void Curl_mime_cleanpart(curl_mimepart *part)
{
  cleanup_part_content(part);
  curl_slist_free_all(part->curlheaders);
  if(part->flags & MIME_USERHEADERS_OWNER)
    curl_slist_free_all(part->userheaders);
  Curl_safefree(part->mimetype);
  Curl_safefree(part->name);
  Curl_safefree(part->filename);
  Curl_mime_initpart(part, part->easy);
}
