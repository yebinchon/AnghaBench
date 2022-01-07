
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int serialno; int lacing_fill; void* header_head; scalar_t__ header_tail; void* body_head; scalar_t__ body_tail; } ;
typedef TYPE_1__ ogg_stream_state ;
struct TYPE_10__ {scalar_t__ header; scalar_t__ body; } ;
typedef TYPE_2__ ogg_page ;


 int OGG_ESERIAL ;
 int OGG_EVERSION ;
 int OGG_SUCCESS ;
 int memset (TYPE_2__*,int ,int) ;
 void* ogg_buffer_cat (void*,scalar_t__) ;
 void* ogg_buffer_walk (scalar_t__) ;
 int ogg_page_release (TYPE_2__*) ;
 int ogg_page_serialno (TYPE_2__*) ;
 int ogg_page_version (TYPE_2__*) ;

int ogg_stream_pagein(ogg_stream_state *os, ogg_page *og){

  int serialno=ogg_page_serialno(og);
  int version=ogg_page_version(og);


  if(serialno!=os->serialno){
    ogg_page_release(og);
    return OGG_ESERIAL;
  }
  if(version>0){
    ogg_page_release(og);
    return OGG_EVERSION;
  }


  if(!os->body_tail){
    os->body_tail=og->body;
    os->body_head=ogg_buffer_walk(og->body);
  }else{
    os->body_head=ogg_buffer_cat(os->body_head,og->body);
  }
  if(!os->header_tail){
    os->header_tail=og->header;
    os->header_head=ogg_buffer_walk(og->header);
    os->lacing_fill=-27;
  }else{
    os->header_head=ogg_buffer_cat(os->header_head,og->header);
  }

  memset(og,0,sizeof(*og));
  return OGG_SUCCESS;
}
