
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int b_o_s; scalar_t__ lacing_fill; scalar_t__ e_o_s; } ;
typedef TYPE_1__ ogg_stream_state ;
typedef int ogg_page ;


 scalar_t__ ogg_stream_check (TYPE_1__*) ;
 int ogg_stream_flush_i (TYPE_1__*,int *,int,int) ;

int ogg_stream_pageout_fill(ogg_stream_state *os, ogg_page *og, int nfill){
  int force=0;
  if(ogg_stream_check(os)) return 0;

  if((os->e_o_s&&os->lacing_fill) ||
     (os->lacing_fill&&!os->b_o_s))
    force=1;

  return(ogg_stream_flush_i(os,og,force,nfill));
}
