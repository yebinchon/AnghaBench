#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vorbis_fpu_control ;
struct TYPE_7__ {long channels; } ;
struct TYPE_6__ {scalar_t__ ready_state; long pcm_offset; int current_link; int /*<<< orphan*/  vi; int /*<<< orphan*/  vd; } ;
typedef  TYPE_1__ OggVorbis_File ;

/* Variables and functions */
 scalar_t__ INITSET ; 
 scalar_t__ OPENED ; 
 long OV_EINVAL ; 
 int OV_EOF ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 
 int FUNC1 () ; 
 TYPE_3__* FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (float) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 long FUNC7 (int /*<<< orphan*/ *,float***) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,long) ; 

long FUNC9(OggVorbis_File *vf,char *buffer,int length,
                    int bigendianp,int word,int sgned,int *bitstream,
                    void (*filter)(float **pcm,long channels,long samples,void *filter_param),void *filter_param){
  int i,j;
  int host_endian = FUNC1();
  int hs;

  float **pcm;
  long samples;

  if(vf->ready_state<OPENED)return(OV_EINVAL);

  while(1){
    if(vf->ready_state==INITSET){
      samples=FUNC7(&vf->vd,&pcm);
      if(samples)break;
    }

    /* suck in another packet */
    {
      int ret=FUNC0(vf,NULL,1,1);
      if(ret==OV_EOF)
        return(0);
      if(ret<=0)
        return(ret);
    }

  }

  if(samples>0){

    /* yay! proceed to pack data into the byte buffer */

    long channels=FUNC2(vf,-1)->channels;
    long bytespersample=word * channels;
    vorbis_fpu_control fpu;
    if(samples>length/bytespersample)samples=length/bytespersample;

    if(samples <= 0)
      return OV_EINVAL;

    /* Here. */
    if(filter)
      filter(pcm,channels,samples,filter_param);

    /* a tight loop to pack each size */
    {
      int val;
      if(word==1){
        int off=(sgned?0:128);
        FUNC4(&fpu);
        for(j=0;j<samples;j++)
          for(i=0;i<channels;i++){
            val=FUNC5(pcm[i][j]*128.f);
            if(val>127)val=127;
            else if(val<-128)val=-128;
            *buffer++=val+off;
          }
        FUNC3(fpu);
      }else{
        int off=(sgned?0:32768);

        if(host_endian==bigendianp){
          if(sgned){

            FUNC4(&fpu);
            for(i=0;i<channels;i++) { /* It's faster in this order */
              float *src=pcm[i];
              short *dest=((short *)buffer)+i;
              for(j=0;j<samples;j++) {
                val=FUNC5(src[j]*32768.f);
                if(val>32767)val=32767;
                else if(val<-32768)val=-32768;
                *dest=val;
                dest+=channels;
              }
            }
            FUNC3(fpu);

          }else{

            FUNC4(&fpu);
            for(i=0;i<channels;i++) {
              float *src=pcm[i];
              short *dest=((short *)buffer)+i;
              for(j=0;j<samples;j++) {
                val=FUNC5(src[j]*32768.f);
                if(val>32767)val=32767;
                else if(val<-32768)val=-32768;
                *dest=val+off;
                dest+=channels;
              }
            }
            FUNC3(fpu);

          }
        }else if(bigendianp){

          FUNC4(&fpu);
          for(j=0;j<samples;j++)
            for(i=0;i<channels;i++){
              val=FUNC5(pcm[i][j]*32768.f);
              if(val>32767)val=32767;
              else if(val<-32768)val=-32768;
              val+=off;
              *buffer++=(val>>8);
              *buffer++=(val&0xff);
            }
          FUNC3(fpu);

        }else{
          int val;
          FUNC4(&fpu);
          for(j=0;j<samples;j++)
            for(i=0;i<channels;i++){
              val=FUNC5(pcm[i][j]*32768.f);
              if(val>32767)val=32767;
              else if(val<-32768)val=-32768;
              val+=off;
              *buffer++=(val&0xff);
              *buffer++=(val>>8);
                  }
          FUNC3(fpu);

        }
      }
    }

    FUNC8(&vf->vd,samples);
    hs=FUNC6(vf->vi);
    vf->pcm_offset+=(samples<<hs);
    if(bitstream)*bitstream=vf->current_link;
    return(samples*bytespersample);
  }else{
    return(samples);
  }
}