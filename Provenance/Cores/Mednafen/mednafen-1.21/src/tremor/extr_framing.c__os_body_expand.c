
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long body_storage; long body_fill; void* body_data; } ;
typedef TYPE_1__ ogg_stream_state ;


 long LONG_MAX ;
 void* _ogg_realloc (void*,long) ;
 int ogg_stream_clear (TYPE_1__*) ;

__attribute__((used)) static int _os_body_expand(ogg_stream_state *os,long needed){
  if(os->body_storage-needed<=os->body_fill){
    long body_storage;
    void *ret;
    if(os->body_storage>LONG_MAX-needed){
      ogg_stream_clear(os);
      return -1;
    }
    body_storage=os->body_storage+needed;
    if(body_storage<LONG_MAX-1024)body_storage+=1024;
    ret=_ogg_realloc(os->body_data,body_storage*sizeof(*os->body_data));
    if(!ret){
      ogg_stream_clear(os);
      return -1;
    }
    os->body_storage=body_storage;
    os->body_data=ret;
  }
  return 0;
}
