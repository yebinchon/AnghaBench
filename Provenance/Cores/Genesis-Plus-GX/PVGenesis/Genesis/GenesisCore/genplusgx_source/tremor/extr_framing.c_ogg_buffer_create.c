
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_buffer_state ;


 int * _ogg_calloc (int,int) ;

__attribute__((used)) static ogg_buffer_state *ogg_buffer_create(void){
  ogg_buffer_state *bs=_ogg_calloc(1,sizeof(*bs));
  return bs;
}
