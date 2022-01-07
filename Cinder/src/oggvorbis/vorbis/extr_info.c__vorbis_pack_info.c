
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int channels; int rate; int bitrate_upper; int bitrate_nominal; int bitrate_lower; TYPE_2__* codec_setup; } ;
typedef TYPE_1__ vorbis_info ;
typedef int oggpack_buffer ;
struct TYPE_5__ {int * blocksizes; } ;
typedef TYPE_2__ codec_setup_info ;


 int OV_EFAULT ;
 int _v_writestring (int *,char*,int) ;
 int ilog2 (int ) ;
 int oggpack_write (int *,int,int) ;

__attribute__((used)) static int _vorbis_pack_info(oggpack_buffer *opb,vorbis_info *vi){
  codec_setup_info *ci=vi->codec_setup;
  if(!ci)return(OV_EFAULT);


  oggpack_write(opb,0x01,8);
  _v_writestring(opb,"vorbis", 6);


  oggpack_write(opb,0x00,32);
  oggpack_write(opb,vi->channels,8);
  oggpack_write(opb,vi->rate,32);

  oggpack_write(opb,vi->bitrate_upper,32);
  oggpack_write(opb,vi->bitrate_nominal,32);
  oggpack_write(opb,vi->bitrate_lower,32);

  oggpack_write(opb,ilog2(ci->blocksizes[0]),4);
  oggpack_write(opb,ilog2(ci->blocksizes[1]),4);
  oggpack_write(opb,1,1);

  return(0);
}
