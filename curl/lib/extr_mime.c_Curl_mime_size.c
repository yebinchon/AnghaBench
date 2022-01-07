
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ curl_off_t ;
struct TYPE_6__ {scalar_t__ kind; scalar_t__ datasize; int flags; int userheaders; int curlheaders; TYPE_1__* encoder; int arg; } ;
typedef TYPE_2__ curl_mimepart ;
struct TYPE_5__ {scalar_t__ (* sizefunc ) (TYPE_2__*) ;} ;


 scalar_t__ MIMEKIND_MULTIPART ;
 int MIME_BODY_ONLY ;
 scalar_t__ multipart_size (int ) ;
 scalar_t__ slist_size (int ,int,char*) ;
 scalar_t__ stub1 (TYPE_2__*) ;

curl_off_t Curl_mime_size(curl_mimepart *part)
{
  curl_off_t size;

  if(part->kind == MIMEKIND_MULTIPART)
    part->datasize = multipart_size(part->arg);

  size = part->datasize;

  if(part->encoder)
    size = part->encoder->sizefunc(part);

  if(size >= 0 && !(part->flags & MIME_BODY_ONLY)) {

    size += slist_size(part->curlheaders, 2, ((void*)0));
    size += slist_size(part->userheaders, 2, "Content-Type");
    size += 2;
  }
  return size;
}
