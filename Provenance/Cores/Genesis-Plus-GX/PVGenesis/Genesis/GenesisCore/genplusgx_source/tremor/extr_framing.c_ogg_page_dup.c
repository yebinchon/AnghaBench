
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* body; void* header; int body_len; int header_len; } ;
typedef TYPE_1__ ogg_page ;


 void* ogg_buffer_dup (void*) ;

void ogg_page_dup(ogg_page *dup,ogg_page *orig){
  dup->header_len=orig->header_len;
  dup->body_len=orig->body_len;
  dup->header=ogg_buffer_dup(orig->header);
  dup->body=ogg_buffer_dup(orig->body);
}
