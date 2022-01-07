
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int channels; } ;
typedef TYPE_1__ vorbis_info ;
typedef int vorbis_dsp_state ;
struct TYPE_7__ {int vd; } ;
typedef TYPE_2__ OggVorbis_File ;


 int OV_EOF ;
 int _fetch_and_process_packet (TYPE_2__*,int *,int,int ) ;
 int memcpy (float*,float*,int) ;
 int memset (float*,int ,int) ;
 int vorbis_synthesis_lapout (int *,float***) ;
 int vorbis_synthesis_pcmout (int *,float***) ;
 int vorbis_synthesis_read (int *,int) ;

__attribute__((used)) static void _ov_getlap(OggVorbis_File *vf,vorbis_info *vi,vorbis_dsp_state *vd,
                       float **lappcm,int lapsize){
  int lapcount=0,i;
  float **pcm;


  while(lapcount<lapsize){
    int samples=vorbis_synthesis_pcmout(vd,&pcm);
    if(samples){
      if(samples>lapsize-lapcount)samples=lapsize-lapcount;
      for(i=0;i<vi->channels;i++)
        memcpy(lappcm[i]+lapcount,pcm[i],sizeof(**pcm)*samples);
      lapcount+=samples;
      vorbis_synthesis_read(vd,samples);
    }else{

      int ret=_fetch_and_process_packet(vf,((void*)0),1,0);
      if(ret==OV_EOF)break;
    }
  }
  if(lapcount<lapsize){



    int samples=vorbis_synthesis_lapout(&vf->vd,&pcm);
    if(samples==0){
      for(i=0;i<vi->channels;i++)
        memset(lappcm[i]+lapcount,0,sizeof(**pcm)*lapsize-lapcount);
      lapcount=lapsize;
    }else{
      if(samples>lapsize-lapcount)samples=lapsize-lapcount;
      for(i=0;i<vi->channels;i++)
        memcpy(lappcm[i]+lapcount,pcm[i],sizeof(**pcm)*samples);
      lapcount+=samples;
    }
  }
}
