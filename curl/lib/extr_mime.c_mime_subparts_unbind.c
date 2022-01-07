
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {TYPE_2__* parent; } ;
typedef TYPE_1__ curl_mime ;
struct TYPE_4__ {int * freefunc; } ;


 int cleanup_part_content (TYPE_2__*) ;

__attribute__((used)) static void mime_subparts_unbind(void *ptr)
{
  curl_mime *mime = (curl_mime *) ptr;

  if(mime && mime->parent) {
    mime->parent->freefunc = ((void*)0);
    cleanup_part_content(mime->parent);
    mime->parent = ((void*)0);
  }
}
