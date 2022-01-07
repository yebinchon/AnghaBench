
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ready_state; long pcm_offset; int current_link; int vd; int vi; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ INITSET ;
 scalar_t__ OPENED ;
 long OV_EINVAL ;
 int OV_EOF ;
 int _fetch_and_process_packet (TYPE_1__*,int *,int,int) ;
 int vorbis_synthesis_halfrate_p (int ) ;
 long vorbis_synthesis_pcmout (int *,float***) ;
 int vorbis_synthesis_read (int *,long) ;

long ov_read_float(OggVorbis_File *vf,float ***pcm_channels,int length,
                   int *bitstream){

  if(vf->ready_state<OPENED)return(OV_EINVAL);

  while(1){
    if(vf->ready_state==INITSET){
      float **pcm;
      long samples=vorbis_synthesis_pcmout(&vf->vd,&pcm);
      if(samples){
        int hs=vorbis_synthesis_halfrate_p(vf->vi);
        if(pcm_channels)*pcm_channels=pcm;
        if(samples>length)samples=length;
        vorbis_synthesis_read(&vf->vd,samples);
        vf->pcm_offset+=samples<<hs;
        if(bitstream)*bitstream=vf->current_link;
        return samples;

      }
    }


    {
      int ret=_fetch_and_process_packet(vf,((void*)0),1,1);
      if(ret==OV_EOF)return(0);
      if(ret<=0)return(ret);
    }

  }
}
