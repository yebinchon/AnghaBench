
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int headers; int data; int encoder; int type; int filename; int name; struct TYPE_4__* prev; struct TYPE_4__* subparts; } ;
typedef TYPE_1__ tool_mime ;


 int CONST_SAFEFREE (int ) ;
 int curl_slist_free_all (int ) ;
 int free (TYPE_1__*) ;

void tool_mime_free(tool_mime *mime)
{
  if(mime) {
    if(mime->subparts)
      tool_mime_free(mime->subparts);
    if(mime->prev)
      tool_mime_free(mime->prev);
    CONST_SAFEFREE(mime->name);
    CONST_SAFEFREE(mime->filename);
    CONST_SAFEFREE(mime->type);
    CONST_SAFEFREE(mime->encoder);
    CONST_SAFEFREE(mime->data);
    curl_slist_free_all(mime->headers);
    free(mime);
  }
}
