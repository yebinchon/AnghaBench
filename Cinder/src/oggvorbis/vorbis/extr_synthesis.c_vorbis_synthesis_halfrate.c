
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_5__ {int* blocksizes; int halfrate_flag; } ;
typedef TYPE_2__ codec_setup_info ;



int vorbis_synthesis_halfrate(vorbis_info *vi,int flag){

  codec_setup_info *ci=vi->codec_setup;


  if(ci->blocksizes[0]<=64 && flag)return -1;
  ci->halfrate_flag=(flag?1:0);
  return 0;
}
