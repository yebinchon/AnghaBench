
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* parent; } ;
typedef TYPE_1__ curl_mime ;
struct TYPE_5__ {int * freefunc; } ;


 int cleanup_part_content (TYPE_3__*) ;
 int curl_mime_free (TYPE_1__*) ;

__attribute__((used)) static void mime_subparts_free(void *ptr)
{
  curl_mime *mime = (curl_mime *) ptr;

  if(mime && mime->parent) {
    mime->parent->freefunc = ((void*)0);
    cleanup_part_content(mime->parent);
  }
  curl_mime_free(mime);
}
