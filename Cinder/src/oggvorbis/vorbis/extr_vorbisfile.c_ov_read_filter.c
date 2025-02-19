
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vorbis_fpu_control ;
struct TYPE_7__ {long channels; } ;
struct TYPE_6__ {scalar_t__ ready_state; long pcm_offset; int current_link; int vi; int vd; } ;
typedef TYPE_1__ OggVorbis_File ;


 scalar_t__ INITSET ;
 scalar_t__ OPENED ;
 long OV_EINVAL ;
 int OV_EOF ;
 int _fetch_and_process_packet (TYPE_1__*,int *,int,int) ;
 int host_is_big_endian () ;
 TYPE_3__* ov_info (TYPE_1__*,int) ;
 int vorbis_fpu_restore (int ) ;
 int vorbis_fpu_setround (int *) ;
 int vorbis_ftoi (float) ;
 int vorbis_synthesis_halfrate_p (int ) ;
 long vorbis_synthesis_pcmout (int *,float***) ;
 int vorbis_synthesis_read (int *,long) ;

long ov_read_filter(OggVorbis_File *vf,char *buffer,int length,
                    int bigendianp,int word,int sgned,int *bitstream,
                    void (*filter)(float **pcm,long channels,long samples,void *filter_param),void *filter_param){
  int i,j;
  int host_endian = host_is_big_endian();
  int hs;

  float **pcm;
  long samples;

  if(vf->ready_state<OPENED)return(OV_EINVAL);

  while(1){
    if(vf->ready_state==INITSET){
      samples=vorbis_synthesis_pcmout(&vf->vd,&pcm);
      if(samples)break;
    }


    {
      int ret=_fetch_and_process_packet(vf,((void*)0),1,1);
      if(ret==OV_EOF)
        return(0);
      if(ret<=0)
        return(ret);
    }

  }

  if(samples>0){



    long channels=ov_info(vf,-1)->channels;
    long bytespersample=word * channels;
    vorbis_fpu_control fpu;
    if(samples>length/bytespersample)samples=length/bytespersample;

    if(samples <= 0)
      return OV_EINVAL;


    if(filter)
      filter(pcm,channels,samples,filter_param);


    {
      int val;
      if(word==1){
        int off=(sgned?0:128);
        vorbis_fpu_setround(&fpu);
        for(j=0;j<samples;j++)
          for(i=0;i<channels;i++){
            val=vorbis_ftoi(pcm[i][j]*128.f);
            if(val>127)val=127;
            else if(val<-128)val=-128;
            *buffer++=val+off;
          }
        vorbis_fpu_restore(fpu);
      }else{
        int off=(sgned?0:32768);

        if(host_endian==bigendianp){
          if(sgned){

            vorbis_fpu_setround(&fpu);
            for(i=0;i<channels;i++) {
              float *src=pcm[i];
              short *dest=((short *)buffer)+i;
              for(j=0;j<samples;j++) {
                val=vorbis_ftoi(src[j]*32768.f);
                if(val>32767)val=32767;
                else if(val<-32768)val=-32768;
                *dest=val;
                dest+=channels;
              }
            }
            vorbis_fpu_restore(fpu);

          }else{

            vorbis_fpu_setround(&fpu);
            for(i=0;i<channels;i++) {
              float *src=pcm[i];
              short *dest=((short *)buffer)+i;
              for(j=0;j<samples;j++) {
                val=vorbis_ftoi(src[j]*32768.f);
                if(val>32767)val=32767;
                else if(val<-32768)val=-32768;
                *dest=val+off;
                dest+=channels;
              }
            }
            vorbis_fpu_restore(fpu);

          }
        }else if(bigendianp){

          vorbis_fpu_setround(&fpu);
          for(j=0;j<samples;j++)
            for(i=0;i<channels;i++){
              val=vorbis_ftoi(pcm[i][j]*32768.f);
              if(val>32767)val=32767;
              else if(val<-32768)val=-32768;
              val+=off;
              *buffer++=(val>>8);
              *buffer++=(val&0xff);
            }
          vorbis_fpu_restore(fpu);

        }else{
          int val;
          vorbis_fpu_setround(&fpu);
          for(j=0;j<samples;j++)
            for(i=0;i<channels;i++){
              val=vorbis_ftoi(pcm[i][j]*32768.f);
              if(val>32767)val=32767;
              else if(val<-32768)val=-32768;
              val+=off;
              *buffer++=(val&0xff);
              *buffer++=(val>>8);
                  }
          vorbis_fpu_restore(fpu);

        }
      }
    }

    vorbis_synthesis_read(&vf->vd,samples);
    hs=vorbis_synthesis_halfrate_p(vf->vi);
    vf->pcm_offset+=(samples<<hs);
    if(bitstream)*bitstream=vf->current_link;
    return(samples*bytespersample);
  }else{
    return(samples);
  }
}
