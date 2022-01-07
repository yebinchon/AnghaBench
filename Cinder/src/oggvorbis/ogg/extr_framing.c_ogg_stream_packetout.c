
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_stream_state ;
typedef int ogg_packet ;


 int _packetout (int *,int *,int) ;
 scalar_t__ ogg_stream_check (int *) ;

int ogg_stream_packetout(ogg_stream_state *os,ogg_packet *op){
  if(ogg_stream_check(os)) return 0;
  return _packetout(os,op,1);
}
