
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ granule_vals; scalar_t__ lacing_vals; scalar_t__ body_data; } ;
typedef TYPE_1__ ogg_stream_state ;


 int _ogg_free (scalar_t__) ;
 int memset (TYPE_1__*,int ,int) ;

int ogg_stream_clear(ogg_stream_state *os){
  if(os){
    if(os->body_data)_ogg_free(os->body_data);
    if(os->lacing_vals)_ogg_free(os->lacing_vals);
    if(os->granule_vals)_ogg_free(os->granule_vals);

    memset(os,0,sizeof(*os));
  }
  return(0);
}
