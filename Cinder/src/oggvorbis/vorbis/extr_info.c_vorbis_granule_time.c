
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* vi; } ;
typedef TYPE_2__ vorbis_dsp_state ;
typedef int ogg_int64_t ;
struct TYPE_4__ {double rate; } ;



double vorbis_granule_time(vorbis_dsp_state *v,ogg_int64_t granulepos){
  if(granulepos == -1) return -1;



  if(granulepos>=0){
    return((double)granulepos/v->vi->rate);
  }else{
    ogg_int64_t granuleoff=0xffffffff;
    granuleoff<<=31;
    granuleoff|=0x7ffffffff;
    return(((double)granulepos+2+granuleoff+granuleoff)/v->vi->rate);
  }
}
