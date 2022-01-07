
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* nextpart; TYPE_2__* parent; } ;
typedef TYPE_1__ curl_mimepart ;
struct TYPE_7__ {TYPE_1__* lastpart; TYPE_1__* firstpart; int easy; } ;
typedef TYPE_2__ curl_mime ;


 int Curl_mime_initpart (TYPE_1__*,int ) ;
 scalar_t__ malloc (int) ;

curl_mimepart *curl_mime_addpart(curl_mime *mime)
{
  curl_mimepart *part;

  if(!mime)
    return ((void*)0);

  part = (curl_mimepart *) malloc(sizeof(*part));

  if(part) {
    Curl_mime_initpart(part, mime->easy);
    part->parent = mime;

    if(mime->lastpart)
      mime->lastpart->nextpart = part;
    else
      mime->firstpart = part;

    mime->lastpart = part;
  }

  return part;
}
