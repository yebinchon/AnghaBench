
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int body_storage; int lacing_storage; int serialno; void* granule_vals; void* lacing_vals; void* body_data; } ;
typedef TYPE_1__ ogg_stream_state ;


 void* _ogg_malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int ogg_stream_clear (TYPE_1__*) ;

int ogg_stream_init(ogg_stream_state *os,int serialno){
  if(os){
    memset(os,0,sizeof(*os));
    os->body_storage=16*1024;
    os->lacing_storage=1024;

    os->body_data=_ogg_malloc(os->body_storage*sizeof(*os->body_data));
    os->lacing_vals=_ogg_malloc(os->lacing_storage*sizeof(*os->lacing_vals));
    os->granule_vals=_ogg_malloc(os->lacing_storage*sizeof(*os->granule_vals));

    if(!os->body_data || !os->lacing_vals || !os->granule_vals){
      ogg_stream_clear(os);
      return -1;
    }

    os->serialno=serialno;

    return(0);
  }
  return(-1);
}
