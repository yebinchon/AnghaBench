
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int body_tail; int header_tail; } ;
typedef TYPE_1__ ogg_stream_state ;


 int OGG_SUCCESS ;
 int _ogg_free (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;
 int ogg_buffer_release (int ) ;

int ogg_stream_destroy(ogg_stream_state *os){
  if(os){
    ogg_buffer_release(os->header_tail);
    ogg_buffer_release(os->body_tail);
    memset(os,0,sizeof(*os));
    _ogg_free(os);
  }
  return OGG_SUCCESS;
}
