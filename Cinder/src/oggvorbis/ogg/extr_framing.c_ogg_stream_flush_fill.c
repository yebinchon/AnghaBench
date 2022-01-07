
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ogg_stream_state ;
typedef int ogg_page ;


 int ogg_stream_flush_i (int *,int *,int,int) ;

int ogg_stream_flush_fill(ogg_stream_state *os,ogg_page *og, int nfill){
  return ogg_stream_flush_i(os,og,1,nfill);
}
