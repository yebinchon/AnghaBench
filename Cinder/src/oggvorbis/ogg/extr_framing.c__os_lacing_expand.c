
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {long lacing_storage; long lacing_fill; void* granule_vals; void* lacing_vals; } ;
typedef TYPE_1__ ogg_stream_state ;


 long LONG_MAX ;
 void* _ogg_realloc (void*,long) ;
 int ogg_stream_clear (TYPE_1__*) ;

__attribute__((used)) static int _os_lacing_expand(ogg_stream_state *os,long needed){
  if(os->lacing_storage-needed<=os->lacing_fill){
    long lacing_storage;
    void *ret;
    if(os->lacing_storage>LONG_MAX-needed){
      ogg_stream_clear(os);
      return -1;
    }
    lacing_storage=os->lacing_storage+needed;
    if(lacing_storage<LONG_MAX-32)lacing_storage+=32;
    ret=_ogg_realloc(os->lacing_vals,lacing_storage*sizeof(*os->lacing_vals));
    if(!ret){
      ogg_stream_clear(os);
      return -1;
    }
    os->lacing_vals=ret;
    ret=_ogg_realloc(os->granule_vals,lacing_storage*
                     sizeof(*os->granule_vals));
    if(!ret){
      ogg_stream_clear(os);
      return -1;
    }
    os->granule_vals=ret;
    os->lacing_storage=lacing_storage;
  }
  return 0;
}
