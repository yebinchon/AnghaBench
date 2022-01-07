
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ codec_setup; } ;
typedef TYPE_2__ vorbis_info ;
typedef int oggpack_buffer ;
struct TYPE_9__ {int packet; } ;
typedef TYPE_3__ ogg_packet ;
struct TYPE_10__ {int modes; long* blocksizes; TYPE_1__** mode_param; } ;
typedef TYPE_4__ codec_setup_info ;
struct TYPE_7__ {size_t blockflag; } ;


 long OV_EBADPACKET ;
 long OV_ENOTAUDIO ;
 scalar_t__ oggpack_read (int *,int) ;
 int oggpack_readinit (int *,int ) ;

long vorbis_packet_blocksize(vorbis_info *vi,ogg_packet *op){
  codec_setup_info *ci=(codec_setup_info *)vi->codec_setup;
  oggpack_buffer opb;
  int mode;

  oggpack_readinit(&opb,op->packet);


  if(oggpack_read(&opb,1)!=0){

    return(OV_ENOTAUDIO);
  }

  {
    int modebits=0;
    int v=ci->modes;
    while(v>1){
      modebits++;
      v>>=1;
    }


    mode=oggpack_read(&opb,modebits);
  }
  if(mode==-1)return(OV_EBADPACKET);
  return(ci->blocksizes[ci->mode_param[mode]->blockflag]);
}
