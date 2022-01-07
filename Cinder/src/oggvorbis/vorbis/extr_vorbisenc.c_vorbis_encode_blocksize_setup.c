
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



__attribute__((used)) static void vorbis_encode_blocksize_setup(vorbis_info *vi,double s,
                                         const int *shortb,const int *longb){

  codec_setup_info *ci=vi->codec_setup;
  int is=s;

  int blockshort=shortb[is];
  int blocklong=longb[is];
  ci->blocksizes[0]=blockshort;
  ci->blocksizes[1]=blocklong;

}
