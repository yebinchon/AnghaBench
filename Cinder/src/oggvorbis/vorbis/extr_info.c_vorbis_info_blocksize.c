
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
struct TYPE_5__ {int* blocksizes; } ;
typedef TYPE_2__ codec_setup_info ;



int vorbis_info_blocksize(vorbis_info *vi,int zo){
  codec_setup_info *ci = vi->codec_setup;
  return ci ? ci->blocksizes[zo] : -1;
}
